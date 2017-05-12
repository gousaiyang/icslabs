# Lab 10: Web Proxy

## Requirements

### Introduction

In this lab, you will write a concurrent Web proxy that logs requests.  
In the first part of the lab, you will write a simple sequential proxy that repeatedly waits for a request, forwards the request to the end server, and returns the result back to the browser, keeping a log of such requests in a disk file. This part will help you understand basics about network programming and the HTTP protocol.  
In the second part of the lab, you will upgrade your proxy so that it uses threads to deal with multiple clients concurrently. This part will give you some experience with concurrency and synchronization, which are crucial computer systems concepts.

### Full requirements

See [`lab10.pdf`](https://github.com/gousaiyang/icslabs/blob/master/lab10/lab10.pdf).

### Files to commit

- `proxy.c`

## My score and feelings

### My score

50 / 50 (Full score)

### My general feelings

这个 lab 综合性很强，不算难，但是非常坑。和 lab9 一样，一定要仔细看书和文档，里面提到了很多需要注意的问题。

## Hints

### 提供的工具函数中存在的几个 bug

- `proxy.c` 文件中预先给定的 `parse_uri()` 函数有 bug ，当输入的 URL 只有域名和端口号，没有路径（即请求的是根路径，可省略不写）时，会出现访问越界(Segmentation fault)而崩溃，需要自己去修复这个 bug。
- `proxy.c` 文件中预先给定的 `format_log_entry()` 中，`sprintf()` 函数忘了写入 size 信息，要自己手动补上去。
- `rio_readlineb()` 函数当读到的行超过 `MAXLINE` 个字符时，会返回 `MAXLINE`，但实际只读了 `MAXLINE - 1` 个字符，即返回值偏大了 1，需要手动修复。

### 关于加锁-拷贝的一个需要注意的点

- 在编写 `open_clientfd()` 函数的线程安全版本 `open_clientfd_ts()` 时，需要使用加锁-拷贝技术，然而 `struct hostent` 是一个复杂的结构，里面还含有一些指针，若要拷贝是需要进行深拷贝的。一种简化方法是只把 `(char *)hp->h_addr_list[0]` 拷贝出来，毕竟其他的数据我们不用。

### 非常棘手的两个问题

如何判断客户端的请求已经发送完毕了？如何判断服务器的响应已经接收完毕了？  
如果不手动判断，而对方又没有关闭连接，就会造成 `rio_readlineb()` 函数一直被阻塞。

我的处理方式是：
- 当从客户端请求中读到一行为 `"\r\n"` 时，判定为客户端请求发送完毕。
- 当接收到响应头中有 `"Content-Length"` 的响应时（给定了响应体的大小），通过计算已接收到的响应体大小来判断响应结束。
- 当接收到类型为 `"Transfer-Encoding: chunked"` 的响应时（响应体是分块传输的），读到 `"0\r\n"` 这个表示分块结束的行时，判定为服务器发送响应结束。

虽然我的处理方式已经通过了测试脚本，得到了满分，但是仍然存在很多不完备的地方，这些地方测试脚本没有覆盖到。主要问题如下：
- 测试脚本中只有 GET 请求，GET 请求一般没有请求体，但对于 POST 请求等等有请求体的请求方法，我的做法会导致请求体没有被发送到服务器。应当检查请求头中是否有 `"Content-Length"`，若有则这个请求是具有请求体的，要请求体发送完毕（检查发送的字节数）才是整个请求发送完毕的时候。
- 对于类型为 `"Transfer-Encoding: chunked"` 的响应，如果响应体中恰巧出现了 `"0\r\n"` 这样的行，那么对响应的读取会提前终止，造成响应读取的不完全。正确的处理方法是读取每个分块前面的长度标记，读了足够长度的块内容后再去找下一个分块前面的长度标记，直到读到某个分块的大小为 0，才是真正标志着响应结束了。

事实上，思维不必局限于只能使用 `rio_readlineb()` 函数。使用 `rio_readnb()` 函数能简化这个问题的一些处理步骤。但要注意，当欲读取内容的长度超过 buffer 的最大值时，要分次读取。
