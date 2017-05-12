/*
 * proxy.c - CS:APP Web proxy
 *
 * TEAM MEMBERS:
 *     Andrew Carnegie, ac00@cs.cmu.edu
 *     Harry Q. Bovik, bovik@cs.cmu.edu
 *
 * Name: Gou Saiyang
 * Student number: 515030910022
 * 
 * This is a simple HTTP proxy that can work between real browsers and servers.
 * It forwards requests from clients to target servers, and forwards responses back to clients.
 * It generates logs for every successful request and response.
 * It can deal with multiple clients by multithreading.
 */

#include "csapp.h"

/* 
 * A structure to store client address and connected descriptor,
 * as a packed argument to pass to threads.
 */
typedef struct client_item_t
{
    struct sockaddr_in clientaddr;
    int connfd;
} client_item;

/*
 * Mutex semaphores for thread synchronization.
 */
sem_t mutex_host, mutex_file;

/*
 * Function prototypes
 */
int parse_uri(char *uri, char *target_addr, char *path, int *port);
void format_log_entry(char *logstring, struct sockaddr_in *sockaddr, char *uri, int size);
ssize_t Rio_readn_w(int fd, void *ptr, size_t nbytes);
void Rio_writen_w(int fd, void *usrbuf, size_t n);
ssize_t Rio_readnb_w(rio_t *rp, void *usrbuf, size_t n);
ssize_t Rio_readlineb_w(rio_t *rp, void *usrbuf, size_t maxlen);
int open_clientfd_ts(char *hostname, int port);
int Open_clientfd_ts(char *hostname, int port);
void *serve_client(void *vargp);

/*
 * main - Main routine for the proxy program
 */
int main(int argc, char **argv)
{
    int listenfd, port;
    client_item *cip;
    socklen_t clientlen = sizeof(struct sockaddr_in);
    pthread_t tid;

    /* Check arguments */
    if (argc != 2) {
       fprintf(stderr, "Usage: %s <port number>\n", argv[0]);
       exit(0);
    }

    /* Ignore SIGPIPE */
    Signal(SIGPIPE, SIG_IGN);

    /* Initialize mutex semaphores */
    Sem_init(&mutex_host, 0, 1);
    Sem_init(&mutex_file, 0, 1);

    /* Get port from command line arguments */
    port = atoi(argv[1]);

    /* Create a listen descriptor */
    listenfd = Open_listenfd(port);
    while (1) {
        /* Allocate new space to store client_item objects (guarantee thread safety) */
        cip = Malloc(sizeof(client_item));

        /* Wait for a connection request */
        cip->connfd = Accept(listenfd, (SA *)&cip->clientaddr, &clientlen);

        /* Handle the request in a new thread */
        Pthread_create(&tid, NULL, serve_client, cip);
    }

    exit(0);
}


/*
 * parse_uri - URI parser
 * 
 * Given a URI from an HTTP proxy GET request (i.e., a URL), extract
 * the host name, path name, and port.  The memory for hostname and
 * pathname must already be allocated and should be at least MAXLINE
 * bytes. Return -1 if there are any problems.
 */
int parse_uri(char *uri, char *hostname, char *pathname, int *port)
{
    char *hostbegin;
    char *hostend;
    char *pathbegin;
    int len;

    if (strncasecmp(uri, "http://", 7) != 0) {
        hostname[0] = '\0';
        return -1;
    }

    /* Extract the host name */
    hostbegin = uri + 7;
    hostend = strpbrk(hostbegin, " :/\r\n\0");
    if (!hostend) { /* Fix a bug when uri only contains hostname and port, without trailing '/' */
        strcat(uri, "/");
        hostend = strpbrk(hostbegin, " :/\r\n\0");
    }
    len = hostend - hostbegin;
    strncpy(hostname, hostbegin, len);
    hostname[len] = '\0';
    
    /* Extract the port number */
    *port = 80; /* default */
    if (*hostend == ':')
        *port = atoi(hostend + 1);
    
    /* Extract the path */
    pathbegin = strchr(hostbegin, '/');
    if (pathbegin == NULL) {
        pathname[0] = '\0';
    }
    else {
        pathbegin++;
        strcpy(pathname, pathbegin);
    }

    return 0;
}

/*
 * format_log_entry - Create a formatted log entry in logstring.
 * 
 * The inputs are the socket address of the requesting client
 * (sockaddr), the URI from the request (uri), and the size in bytes
 * of the response from the server (size).
 */
void format_log_entry(char *logstring, struct sockaddr_in *sockaddr, char *uri, int size)
{
    time_t now;
    char time_str[MAXLINE];
    unsigned long host;
    unsigned char a, b, c, d;

    /* Get a formatted time string */
    now = time(NULL);
    strftime(time_str, MAXLINE, "%a %d %b %Y %H:%M:%S %Z", localtime(&now));

    /*
     * Convert the IP address in network byte order to dotted decimal
     * form. Note that we could have used inet_ntoa, but chose not to
     * because inet_ntoa is a Class 3 thread unsafe function that
     * returns a pointer to a static variable (Ch 13, CS:APP).
     */
    host = ntohl(sockaddr->sin_addr.s_addr);
    a = host >> 24;
    b = (host >> 16) & 0xff;
    c = (host >> 8) & 0xff;
    d = host & 0xff;


    /* Return the formatted log entry string */
    sprintf(logstring, "%s: %d.%d.%d.%d %s %d", time_str, a, b, c, d, uri, size);
}

/*
 * A new wrapper function for rio_readn().
 * Instead of terminating the program when operation fails, it only prints an error message.
 */
ssize_t Rio_readn_w(int fd, void *ptr, size_t nbytes)
{
    ssize_t n;

    if ((n = rio_readn(fd, ptr, nbytes)) < 0) {
        printf("Rio_readn_w failed\n");
        return 0;
    }
    return n;
}

/*
 * A new wrapper function for rio_writen().
 * Instead of terminating the program when operation fails, it only prints an error message.
 */
void Rio_writen_w(int fd, void *usrbuf, size_t n)
{
    if (rio_writen(fd, usrbuf, n) != n)
        printf("Rio_writen_w failed\n");
}

/*
 * A new wrapper function for rio_readnb().
 * Instead of terminating the program when operation fails, it only prints an error message.
 */
ssize_t Rio_readnb_w(rio_t *rp, void *usrbuf, size_t n)
{
    ssize_t rc;

    if ((rc = rio_readnb(rp, usrbuf, n)) < 0) {
        printf("Rio_readnb_w failed\n");
        return 0;
    }
    return rc;
}

/*
 * A new wrapper function for rio_readlineb().
 * Instead of terminating the program when operation fails, it only prints an error message.
 */
ssize_t Rio_readlineb_w(rio_t *rp, void *usrbuf, size_t maxlen)
{
    ssize_t rc;

    if ((rc = rio_readlineb(rp, usrbuf, maxlen)) < 0) {
        printf("Rio_readlineb_w failed\n");
        return 0;
    }
    return rc;
}

/*
 * A thread-safe version of open_clientfd().
 * Use a mutex semaphore to protect content that hp points to.
 */
int open_clientfd_ts(char *hostname, int port)
{
    int clientfd;
    struct hostent *hp;
    struct sockaddr_in serveraddr;

    if ((clientfd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
        return -1; /* check errno for cause of error */

    /* Fill in the server's IP address and port */
    bzero((char *)&serveraddr, sizeof(serveraddr));
    serveraddr.sin_family = AF_INET;
    serveraddr.sin_port = htons(port);
    P(&mutex_host);
    if ((hp = gethostbyname(hostname)) == NULL)
        return -2; /* check h_errno for cause of error */
    bcopy((char *)hp->h_addr_list[0], (char *)&serveraddr.sin_addr.s_addr, hp->h_length);
    V(&mutex_host);

    /* Establish a connection with the server */
    if (connect(clientfd, (SA *)&serveraddr, sizeof(serveraddr)) < 0)
        return -1;
    return clientfd;
}

/*
 * A wrapper function for open_clientfd_ts().
 * If operation fails, it prints an error message and terminates the program.
 */
int Open_clientfd_ts(char *hostname, int port)
{
    int rc;

    if ((rc = open_clientfd_ts(hostname, port)) < 0) {
        if (rc == -1)
            unix_error("Open_clientfd_ts Unix error");
        else        
            dns_error("Open_clientfd_ts DNS error");
    }
    return rc;
}

/*
 * Thread function.
 * Serve a client. Forward request to target server, and forward response back to client.
 * If a response is received, a log line will be created.
 */
void *serve_client(void *vargp)
{
    size_t n; /* Number of bytes transmitted at one time */
    char buf[MAXLINE]; /* Line buffer */
    char method[MAXLINE], uri[MAXLINE], version[MAXLINE];
    char hostname[MAXLINE], pathname[MAXLINE];
    char logstring[MAXLINE];
    int connfd, clientfd, port;
    int body_len = 0x7fffffff; /* Length of body detected by "Content-length" header */
    int recv_body_len = 0; /* Received body length */
    int recv_len = 0; /* Received total length */
    int body_len_set = 0; /* Whether body length has been detected */
    int reach_body = 0; /* Whether body has begun */
    rio_t rio_conn, rio_client;
    client_item ci;
    FILE *logfile;

    /* Detach this thread */
    Pthread_detach(pthread_self());

    /* Get argument and free the allocated space */
    ci = *((client_item *)vargp);
    connfd = ci.connfd;
    Free(vargp);

    /* Get the first request line and parse some data */
    Rio_readinitb(&rio_conn, connfd);
    if (Rio_readlineb_w(&rio_conn, buf, MAXLINE) == 0) {
        Close(connfd);
        return NULL;
    }
    if (sscanf(buf, "%s %s %s", method, uri, version) != 3) {
        printf("request line format error\n");
        Close(connfd);
        return NULL;
    }
    if (parse_uri(uri, hostname, pathname, &port) < 0) {
        printf("parse_uri error\n");
        Close(connfd);
        return NULL;
    }
    
    /* Establish connection with target server */
    clientfd = Open_clientfd_ts(hostname, port);

    /* Send the first request line to target server */
    Rio_readinitb(&rio_client, clientfd);
    Rio_writen_w(clientfd, buf, strlen(buf));

    /* Forward remaining request lines to target server */
    while ((n = Rio_readlineb_w(&rio_conn, buf, MAXLINE)) != 0) {
        Rio_writen_w(clientfd, buf, n);
        if (!strcmp(buf, "\r\n")) /* End of request */
            break;
    }
    
    /* Receive response from target server and forward to client */
    while ((n = Rio_readlineb_w(&rio_client, buf, MAXLINE)) != 0) {
        /* Fix bug of return value when response line exceeds MAXLINE */
        if (n == MAXLINE && buf[MAXLINE - 2] != '\n')
            --n;

        /* Send the response line to client */
        Rio_writen_w(connfd, buf, n);

        /* Calculate length and detect body */
        recv_len += n;
        if (reach_body)
            recv_body_len += n;
        if (!strcmp(buf, "\r\n"))
            reach_body = 1;
        if (!body_len_set && !strncasecmp(buf, "Content-length:", 15)) {
            sscanf(buf + 15, "%d", &body_len);
            body_len_set = 1;
        }

        /* Detect end of response */
        if (recv_body_len >= body_len) /* End of response (given "Content-length") */
            break;
        if (!strcmp(buf, "0\r\n")) { /* End of response (chunked) */
            Rio_writen_w(connfd, "\r\n", 2);
            recv_len += 2;
            break;
        }
    }

    /* Close connection with target server */
    Close(clientfd);

    /* Generate log line */
    format_log_entry(logstring, &ci.clientaddr, uri, recv_len);

    /* Write to log file (protected by a mutex semaphore) */
    P(&mutex_file);
    logfile = fopen("proxy.log", "a");
    fprintf(logfile, "%s\n", logstring);
    fclose(logfile);
    V(&mutex_file);

    /* Close connection with client */
    Close(connfd);

    return NULL;
}
