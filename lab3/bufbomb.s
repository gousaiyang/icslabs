
./bufbomb：     文件格式 elf32-i386


Disassembly of section .init:

080487c0 <_init>:
 80487c0:	53                   	push   %ebx
 80487c1:	83 ec 08             	sub    $0x8,%esp
 80487c4:	e8 c7 02 00 00       	call   8048a90 <__x86.get_pc_thunk.bx>
 80487c9:	81 c3 2f 29 00 00    	add    $0x292f,%ebx
 80487cf:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80487d5:	85 c0                	test   %eax,%eax
 80487d7:	74 05                	je     80487de <_init+0x1e>
 80487d9:	e8 32 01 00 00       	call   8048910 <__gmon_start__@plt>
 80487de:	83 c4 08             	add    $0x8,%esp
 80487e1:	5b                   	pop    %ebx
 80487e2:	c3                   	ret    

Disassembly of section .plt:

080487f0 <strcmp@plt-0x10>:
 80487f0:	ff 35 fc b0 04 08    	pushl  0x804b0fc
 80487f6:	ff 25 00 b1 04 08    	jmp    *0x804b100
 80487fc:	00 00                	add    %al,(%eax)
	...

08048800 <strcmp@plt>:
 8048800:	ff 25 04 b1 04 08    	jmp    *0x804b104
 8048806:	68 00 00 00 00       	push   $0x0
 804880b:	e9 e0 ff ff ff       	jmp    80487f0 <_init+0x30>

08048810 <read@plt>:
 8048810:	ff 25 08 b1 04 08    	jmp    *0x804b108
 8048816:	68 08 00 00 00       	push   $0x8
 804881b:	e9 d0 ff ff ff       	jmp    80487f0 <_init+0x30>

08048820 <srandom@plt>:
 8048820:	ff 25 0c b1 04 08    	jmp    *0x804b10c
 8048826:	68 10 00 00 00       	push   $0x10
 804882b:	e9 c0 ff ff ff       	jmp    80487f0 <_init+0x30>

08048830 <printf@plt>:
 8048830:	ff 25 10 b1 04 08    	jmp    *0x804b110
 8048836:	68 18 00 00 00       	push   $0x18
 804883b:	e9 b0 ff ff ff       	jmp    80487f0 <_init+0x30>

08048840 <strdup@plt>:
 8048840:	ff 25 14 b1 04 08    	jmp    *0x804b114
 8048846:	68 20 00 00 00       	push   $0x20
 804884b:	e9 a0 ff ff ff       	jmp    80487f0 <_init+0x30>

08048850 <memcpy@plt>:
 8048850:	ff 25 18 b1 04 08    	jmp    *0x804b118
 8048856:	68 28 00 00 00       	push   $0x28
 804885b:	e9 90 ff ff ff       	jmp    80487f0 <_init+0x30>

08048860 <bzero@plt>:
 8048860:	ff 25 1c b1 04 08    	jmp    *0x804b11c
 8048866:	68 30 00 00 00       	push   $0x30
 804886b:	e9 80 ff ff ff       	jmp    80487f0 <_init+0x30>

08048870 <signal@plt>:
 8048870:	ff 25 20 b1 04 08    	jmp    *0x804b120
 8048876:	68 38 00 00 00       	push   $0x38
 804887b:	e9 70 ff ff ff       	jmp    80487f0 <_init+0x30>

08048880 <alarm@plt>:
 8048880:	ff 25 24 b1 04 08    	jmp    *0x804b124
 8048886:	68 40 00 00 00       	push   $0x40
 804888b:	e9 60 ff ff ff       	jmp    80487f0 <_init+0x30>

08048890 <_IO_getc@plt>:
 8048890:	ff 25 28 b1 04 08    	jmp    *0x804b128
 8048896:	68 48 00 00 00       	push   $0x48
 804889b:	e9 50 ff ff ff       	jmp    80487f0 <_init+0x30>

080488a0 <htons@plt>:
 80488a0:	ff 25 2c b1 04 08    	jmp    *0x804b12c
 80488a6:	68 50 00 00 00       	push   $0x50
 80488ab:	e9 40 ff ff ff       	jmp    80487f0 <_init+0x30>

080488b0 <fwrite@plt>:
 80488b0:	ff 25 30 b1 04 08    	jmp    *0x804b130
 80488b6:	68 58 00 00 00       	push   $0x58
 80488bb:	e9 30 ff ff ff       	jmp    80487f0 <_init+0x30>

080488c0 <bcopy@plt>:
 80488c0:	ff 25 34 b1 04 08    	jmp    *0x804b134
 80488c6:	68 60 00 00 00       	push   $0x60
 80488cb:	e9 20 ff ff ff       	jmp    80487f0 <_init+0x30>

080488d0 <strcpy@plt>:
 80488d0:	ff 25 38 b1 04 08    	jmp    *0x804b138
 80488d6:	68 68 00 00 00       	push   $0x68
 80488db:	e9 10 ff ff ff       	jmp    80487f0 <_init+0x30>

080488e0 <getpid@plt>:
 80488e0:	ff 25 3c b1 04 08    	jmp    *0x804b13c
 80488e6:	68 70 00 00 00       	push   $0x70
 80488eb:	e9 00 ff ff ff       	jmp    80487f0 <_init+0x30>

080488f0 <gethostname@plt>:
 80488f0:	ff 25 40 b1 04 08    	jmp    *0x804b140
 80488f6:	68 78 00 00 00       	push   $0x78
 80488fb:	e9 f0 fe ff ff       	jmp    80487f0 <_init+0x30>

08048900 <puts@plt>:
 8048900:	ff 25 44 b1 04 08    	jmp    *0x804b144
 8048906:	68 80 00 00 00       	push   $0x80
 804890b:	e9 e0 fe ff ff       	jmp    80487f0 <_init+0x30>

08048910 <__gmon_start__@plt>:
 8048910:	ff 25 48 b1 04 08    	jmp    *0x804b148
 8048916:	68 88 00 00 00       	push   $0x88
 804891b:	e9 d0 fe ff ff       	jmp    80487f0 <_init+0x30>

08048920 <exit@plt>:
 8048920:	ff 25 4c b1 04 08    	jmp    *0x804b14c
 8048926:	68 90 00 00 00       	push   $0x90
 804892b:	e9 c0 fe ff ff       	jmp    80487f0 <_init+0x30>

08048930 <srand@plt>:
 8048930:	ff 25 50 b1 04 08    	jmp    *0x804b150
 8048936:	68 98 00 00 00       	push   $0x98
 804893b:	e9 b0 fe ff ff       	jmp    80487f0 <_init+0x30>

08048940 <mmap@plt>:
 8048940:	ff 25 54 b1 04 08    	jmp    *0x804b154
 8048946:	68 a0 00 00 00       	push   $0xa0
 804894b:	e9 a0 fe ff ff       	jmp    80487f0 <_init+0x30>

08048950 <strlen@plt>:
 8048950:	ff 25 58 b1 04 08    	jmp    *0x804b158
 8048956:	68 a8 00 00 00       	push   $0xa8
 804895b:	e9 90 fe ff ff       	jmp    80487f0 <_init+0x30>

08048960 <__libc_start_main@plt>:
 8048960:	ff 25 5c b1 04 08    	jmp    *0x804b15c
 8048966:	68 b0 00 00 00       	push   $0xb0
 804896b:	e9 80 fe ff ff       	jmp    80487f0 <_init+0x30>

08048970 <write@plt>:
 8048970:	ff 25 60 b1 04 08    	jmp    *0x804b160
 8048976:	68 b8 00 00 00       	push   $0xb8
 804897b:	e9 70 fe ff ff       	jmp    80487f0 <_init+0x30>

08048980 <getopt@plt>:
 8048980:	ff 25 64 b1 04 08    	jmp    *0x804b164
 8048986:	68 c0 00 00 00       	push   $0xc0
 804898b:	e9 60 fe ff ff       	jmp    80487f0 <_init+0x30>

08048990 <strcasecmp@plt>:
 8048990:	ff 25 68 b1 04 08    	jmp    *0x804b168
 8048996:	68 c8 00 00 00       	push   $0xc8
 804899b:	e9 50 fe ff ff       	jmp    80487f0 <_init+0x30>

080489a0 <__isoc99_sscanf@plt>:
 80489a0:	ff 25 6c b1 04 08    	jmp    *0x804b16c
 80489a6:	68 d0 00 00 00       	push   $0xd0
 80489ab:	e9 40 fe ff ff       	jmp    80487f0 <_init+0x30>

080489b0 <memset@plt>:
 80489b0:	ff 25 70 b1 04 08    	jmp    *0x804b170
 80489b6:	68 d8 00 00 00       	push   $0xd8
 80489bb:	e9 30 fe ff ff       	jmp    80487f0 <_init+0x30>

080489c0 <__errno_location@plt>:
 80489c0:	ff 25 74 b1 04 08    	jmp    *0x804b174
 80489c6:	68 e0 00 00 00       	push   $0xe0
 80489cb:	e9 20 fe ff ff       	jmp    80487f0 <_init+0x30>

080489d0 <rand@plt>:
 80489d0:	ff 25 78 b1 04 08    	jmp    *0x804b178
 80489d6:	68 e8 00 00 00       	push   $0xe8
 80489db:	e9 10 fe ff ff       	jmp    80487f0 <_init+0x30>

080489e0 <munmap@plt>:
 80489e0:	ff 25 7c b1 04 08    	jmp    *0x804b17c
 80489e6:	68 f0 00 00 00       	push   $0xf0
 80489eb:	e9 00 fe ff ff       	jmp    80487f0 <_init+0x30>

080489f0 <sprintf@plt>:
 80489f0:	ff 25 80 b1 04 08    	jmp    *0x804b180
 80489f6:	68 f8 00 00 00       	push   $0xf8
 80489fb:	e9 f0 fd ff ff       	jmp    80487f0 <_init+0x30>

08048a00 <socket@plt>:
 8048a00:	ff 25 84 b1 04 08    	jmp    *0x804b184
 8048a06:	68 00 01 00 00       	push   $0x100
 8048a0b:	e9 e0 fd ff ff       	jmp    80487f0 <_init+0x30>

08048a10 <random@plt>:
 8048a10:	ff 25 88 b1 04 08    	jmp    *0x804b188
 8048a16:	68 08 01 00 00       	push   $0x108
 8048a1b:	e9 d0 fd ff ff       	jmp    80487f0 <_init+0x30>

08048a20 <gethostbyname@plt>:
 8048a20:	ff 25 8c b1 04 08    	jmp    *0x804b18c
 8048a26:	68 10 01 00 00       	push   $0x110
 8048a2b:	e9 c0 fd ff ff       	jmp    80487f0 <_init+0x30>

08048a30 <connect@plt>:
 8048a30:	ff 25 90 b1 04 08    	jmp    *0x804b190
 8048a36:	68 18 01 00 00       	push   $0x118
 8048a3b:	e9 b0 fd ff ff       	jmp    80487f0 <_init+0x30>

08048a40 <close@plt>:
 8048a40:	ff 25 94 b1 04 08    	jmp    *0x804b194
 8048a46:	68 20 01 00 00       	push   $0x120
 8048a4b:	e9 a0 fd ff ff       	jmp    80487f0 <_init+0x30>

08048a50 <calloc@plt>:
 8048a50:	ff 25 98 b1 04 08    	jmp    *0x804b198
 8048a56:	68 28 01 00 00       	push   $0x128
 8048a5b:	e9 90 fd ff ff       	jmp    80487f0 <_init+0x30>

Disassembly of section .text:

08048a60 <_start>:
 8048a60:	31 ed                	xor    %ebp,%ebp
 8048a62:	5e                   	pop    %esi
 8048a63:	89 e1                	mov    %esp,%ecx
 8048a65:	83 e4 f0             	and    $0xfffffff0,%esp
 8048a68:	50                   	push   %eax
 8048a69:	54                   	push   %esp
 8048a6a:	52                   	push   %edx
 8048a6b:	68 c0 a2 04 08       	push   $0x804a2c0
 8048a70:	68 50 a2 04 08       	push   $0x804a250
 8048a75:	51                   	push   %ecx
 8048a76:	56                   	push   %esi
 8048a77:	68 d8 90 04 08       	push   $0x80490d8
 8048a7c:	e8 df fe ff ff       	call   8048960 <__libc_start_main@plt>
 8048a81:	f4                   	hlt    
 8048a82:	66 90                	xchg   %ax,%ax
 8048a84:	66 90                	xchg   %ax,%ax
 8048a86:	66 90                	xchg   %ax,%ax
 8048a88:	66 90                	xchg   %ax,%ax
 8048a8a:	66 90                	xchg   %ax,%ax
 8048a8c:	66 90                	xchg   %ax,%ax
 8048a8e:	66 90                	xchg   %ax,%ax

08048a90 <__x86.get_pc_thunk.bx>:
 8048a90:	8b 1c 24             	mov    (%esp),%ebx
 8048a93:	c3                   	ret    
 8048a94:	66 90                	xchg   %ax,%ax
 8048a96:	66 90                	xchg   %ax,%ax
 8048a98:	66 90                	xchg   %ax,%ax
 8048a9a:	66 90                	xchg   %ax,%ax
 8048a9c:	66 90                	xchg   %ax,%ax
 8048a9e:	66 90                	xchg   %ax,%ax

08048aa0 <deregister_tm_clones>:
 8048aa0:	b8 cb b1 04 08       	mov    $0x804b1cb,%eax
 8048aa5:	2d c8 b1 04 08       	sub    $0x804b1c8,%eax
 8048aaa:	83 f8 06             	cmp    $0x6,%eax
 8048aad:	76 1a                	jbe    8048ac9 <deregister_tm_clones+0x29>
 8048aaf:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ab4:	85 c0                	test   %eax,%eax
 8048ab6:	74 11                	je     8048ac9 <deregister_tm_clones+0x29>
 8048ab8:	55                   	push   %ebp
 8048ab9:	89 e5                	mov    %esp,%ebp
 8048abb:	83 ec 14             	sub    $0x14,%esp
 8048abe:	68 c8 b1 04 08       	push   $0x804b1c8
 8048ac3:	ff d0                	call   *%eax
 8048ac5:	83 c4 10             	add    $0x10,%esp
 8048ac8:	c9                   	leave  
 8048ac9:	f3 c3                	repz ret 
 8048acb:	90                   	nop
 8048acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048ad0 <register_tm_clones>:
 8048ad0:	b8 c8 b1 04 08       	mov    $0x804b1c8,%eax
 8048ad5:	2d c8 b1 04 08       	sub    $0x804b1c8,%eax
 8048ada:	c1 f8 02             	sar    $0x2,%eax
 8048add:	89 c2                	mov    %eax,%edx
 8048adf:	c1 ea 1f             	shr    $0x1f,%edx
 8048ae2:	01 d0                	add    %edx,%eax
 8048ae4:	d1 f8                	sar    %eax
 8048ae6:	74 1b                	je     8048b03 <register_tm_clones+0x33>
 8048ae8:	ba 00 00 00 00       	mov    $0x0,%edx
 8048aed:	85 d2                	test   %edx,%edx
 8048aef:	74 12                	je     8048b03 <register_tm_clones+0x33>
 8048af1:	55                   	push   %ebp
 8048af2:	89 e5                	mov    %esp,%ebp
 8048af4:	83 ec 10             	sub    $0x10,%esp
 8048af7:	50                   	push   %eax
 8048af8:	68 c8 b1 04 08       	push   $0x804b1c8
 8048afd:	ff d2                	call   *%edx
 8048aff:	83 c4 10             	add    $0x10,%esp
 8048b02:	c9                   	leave  
 8048b03:	f3 c3                	repz ret 
 8048b05:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048b09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048b10 <__do_global_dtors_aux>:
 8048b10:	80 3d 0c b2 04 08 00 	cmpb   $0x0,0x804b20c
 8048b17:	75 13                	jne    8048b2c <__do_global_dtors_aux+0x1c>
 8048b19:	55                   	push   %ebp
 8048b1a:	89 e5                	mov    %esp,%ebp
 8048b1c:	83 ec 08             	sub    $0x8,%esp
 8048b1f:	e8 7c ff ff ff       	call   8048aa0 <deregister_tm_clones>
 8048b24:	c6 05 0c b2 04 08 01 	movb   $0x1,0x804b20c
 8048b2b:	c9                   	leave  
 8048b2c:	f3 c3                	repz ret 
 8048b2e:	66 90                	xchg   %ax,%ax

08048b30 <frame_dummy>:
 8048b30:	b8 08 b0 04 08       	mov    $0x804b008,%eax
 8048b35:	8b 10                	mov    (%eax),%edx
 8048b37:	85 d2                	test   %edx,%edx
 8048b39:	75 05                	jne    8048b40 <frame_dummy+0x10>
 8048b3b:	eb 93                	jmp    8048ad0 <register_tm_clones>
 8048b3d:	8d 76 00             	lea    0x0(%esi),%esi
 8048b40:	ba 00 00 00 00       	mov    $0x0,%edx
 8048b45:	85 d2                	test   %edx,%edx
 8048b47:	74 f2                	je     8048b3b <frame_dummy+0xb>
 8048b49:	55                   	push   %ebp
 8048b4a:	89 e5                	mov    %esp,%ebp
 8048b4c:	83 ec 14             	sub    $0x14,%esp
 8048b4f:	50                   	push   %eax
 8048b50:	ff d2                	call   *%edx
 8048b52:	83 c4 10             	add    $0x10,%esp
 8048b55:	c9                   	leave  
 8048b56:	e9 75 ff ff ff       	jmp    8048ad0 <register_tm_clones>

08048b5b <smoke>:
 8048b5b:	55                   	push   %ebp
 8048b5c:	89 e5                	mov    %esp,%ebp
 8048b5e:	83 ec 08             	sub    $0x8,%esp
 8048b61:	83 ec 0c             	sub    $0xc,%esp
 8048b64:	68 e0 a2 04 08       	push   $0x804a2e0
 8048b69:	e8 92 fd ff ff       	call   8048900 <puts@plt>
 8048b6e:	83 c4 10             	add    $0x10,%esp
 8048b71:	83 ec 0c             	sub    $0xc,%esp
 8048b74:	6a 00                	push   $0x0
 8048b76:	e8 e5 08 00 00       	call   8049460 <validate>
 8048b7b:	83 c4 10             	add    $0x10,%esp
 8048b7e:	83 ec 0c             	sub    $0xc,%esp
 8048b81:	6a 00                	push   $0x0
 8048b83:	e8 98 fd ff ff       	call   8048920 <exit@plt>

08048b88 <fizz>:
 8048b88:	55                   	push   %ebp
 8048b89:	89 e5                	mov    %esp,%ebp
 8048b8b:	83 ec 08             	sub    $0x8,%esp
 8048b8e:	8b 55 08             	mov    0x8(%ebp),%edx
 8048b91:	a1 20 b2 04 08       	mov    0x804b220,%eax
 8048b96:	39 c2                	cmp    %eax,%edx
 8048b98:	75 22                	jne    8048bbc <fizz+0x34>
 8048b9a:	83 ec 08             	sub    $0x8,%esp
 8048b9d:	ff 75 08             	pushl  0x8(%ebp)
 8048ba0:	68 fb a2 04 08       	push   $0x804a2fb
 8048ba5:	e8 86 fc ff ff       	call   8048830 <printf@plt>
 8048baa:	83 c4 10             	add    $0x10,%esp
 8048bad:	83 ec 0c             	sub    $0xc,%esp
 8048bb0:	6a 01                	push   $0x1
 8048bb2:	e8 a9 08 00 00       	call   8049460 <validate>
 8048bb7:	83 c4 10             	add    $0x10,%esp
 8048bba:	eb 13                	jmp    8048bcf <fizz+0x47>
 8048bbc:	83 ec 08             	sub    $0x8,%esp
 8048bbf:	ff 75 08             	pushl  0x8(%ebp)
 8048bc2:	68 1c a3 04 08       	push   $0x804a31c
 8048bc7:	e8 64 fc ff ff       	call   8048830 <printf@plt>
 8048bcc:	83 c4 10             	add    $0x10,%esp
 8048bcf:	83 ec 0c             	sub    $0xc,%esp
 8048bd2:	6a 00                	push   $0x0
 8048bd4:	e8 47 fd ff ff       	call   8048920 <exit@plt>

08048bd9 <bang>:
 8048bd9:	55                   	push   %ebp
 8048bda:	89 e5                	mov    %esp,%ebp
 8048bdc:	83 ec 08             	sub    $0x8,%esp
 8048bdf:	a1 28 b2 04 08       	mov    0x804b228,%eax
 8048be4:	89 c2                	mov    %eax,%edx
 8048be6:	a1 20 b2 04 08       	mov    0x804b220,%eax
 8048beb:	39 c2                	cmp    %eax,%edx
 8048bed:	75 25                	jne    8048c14 <bang+0x3b>
 8048bef:	a1 28 b2 04 08       	mov    0x804b228,%eax
 8048bf4:	83 ec 08             	sub    $0x8,%esp
 8048bf7:	50                   	push   %eax
 8048bf8:	68 3c a3 04 08       	push   $0x804a33c
 8048bfd:	e8 2e fc ff ff       	call   8048830 <printf@plt>
 8048c02:	83 c4 10             	add    $0x10,%esp
 8048c05:	83 ec 0c             	sub    $0xc,%esp
 8048c08:	6a 02                	push   $0x2
 8048c0a:	e8 51 08 00 00       	call   8049460 <validate>
 8048c0f:	83 c4 10             	add    $0x10,%esp
 8048c12:	eb 16                	jmp    8048c2a <bang+0x51>
 8048c14:	a1 28 b2 04 08       	mov    0x804b228,%eax
 8048c19:	83 ec 08             	sub    $0x8,%esp
 8048c1c:	50                   	push   %eax
 8048c1d:	68 61 a3 04 08       	push   $0x804a361
 8048c22:	e8 09 fc ff ff       	call   8048830 <printf@plt>
 8048c27:	83 c4 10             	add    $0x10,%esp
 8048c2a:	83 ec 0c             	sub    $0xc,%esp
 8048c2d:	6a 00                	push   $0x0
 8048c2f:	e8 ec fc ff ff       	call   8048920 <exit@plt>

08048c34 <test>:
 8048c34:	55                   	push   %ebp
 8048c35:	89 e5                	mov    %esp,%ebp
 8048c37:	83 ec 18             	sub    $0x18,%esp
 8048c3a:	e8 7b 04 00 00       	call   80490ba <uniqueval>
 8048c3f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048c42:	e8 66 00 00 00       	call   8048cad <getbuf>
 8048c47:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048c4a:	e8 6b 04 00 00       	call   80490ba <uniqueval>
 8048c4f:	89 c2                	mov    %eax,%edx
 8048c51:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048c54:	39 c2                	cmp    %eax,%edx
 8048c56:	74 12                	je     8048c6a <test+0x36>
 8048c58:	83 ec 0c             	sub    $0xc,%esp
 8048c5b:	68 80 a3 04 08       	push   $0x804a380
 8048c60:	e8 9b fc ff ff       	call   8048900 <puts@plt>
 8048c65:	83 c4 10             	add    $0x10,%esp
 8048c68:	eb 41                	jmp    8048cab <test+0x77>
 8048c6a:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048c6d:	a1 20 b2 04 08       	mov    0x804b220,%eax
 8048c72:	39 c2                	cmp    %eax,%edx
 8048c74:	75 22                	jne    8048c98 <test+0x64>
 8048c76:	83 ec 08             	sub    $0x8,%esp
 8048c79:	ff 75 f4             	pushl  -0xc(%ebp)
 8048c7c:	68 a9 a3 04 08       	push   $0x804a3a9
 8048c81:	e8 aa fb ff ff       	call   8048830 <printf@plt>
 8048c86:	83 c4 10             	add    $0x10,%esp
 8048c89:	83 ec 0c             	sub    $0xc,%esp
 8048c8c:	6a 03                	push   $0x3
 8048c8e:	e8 cd 07 00 00       	call   8049460 <validate>
 8048c93:	83 c4 10             	add    $0x10,%esp
 8048c96:	eb 13                	jmp    8048cab <test+0x77>
 8048c98:	83 ec 08             	sub    $0x8,%esp
 8048c9b:	ff 75 f4             	pushl  -0xc(%ebp)
 8048c9e:	68 c6 a3 04 08       	push   $0x804a3c6
 8048ca3:	e8 88 fb ff ff       	call   8048830 <printf@plt>
 8048ca8:	83 c4 10             	add    $0x10,%esp
 8048cab:	c9                   	leave  
 8048cac:	c3                   	ret    

08048cad <getbuf>:
 8048cad:	55                   	push   %ebp
 8048cae:	89 e5                	mov    %esp,%ebp
 8048cb0:	83 ec 28             	sub    $0x28,%esp
 8048cb3:	83 ec 0c             	sub    $0xc,%esp
 8048cb6:	8d 45 d8             	lea    -0x28(%ebp),%eax
 8048cb9:	50                   	push   %eax
 8048cba:	e8 3e 01 00 00       	call   8048dfd <Gets>
 8048cbf:	83 c4 10             	add    $0x10,%esp
 8048cc2:	b8 01 00 00 00       	mov    $0x1,%eax
 8048cc7:	c9                   	leave  
 8048cc8:	c3                   	ret    

08048cc9 <getbufn>:
 8048cc9:	55                   	push   %ebp
 8048cca:	89 e5                	mov    %esp,%ebp
 8048ccc:	81 ec 08 02 00 00    	sub    $0x208,%esp
 8048cd2:	83 ec 0c             	sub    $0xc,%esp
 8048cd5:	8d 85 f8 fd ff ff    	lea    -0x208(%ebp),%eax
 8048cdb:	50                   	push   %eax
 8048cdc:	e8 1c 01 00 00       	call   8048dfd <Gets>
 8048ce1:	83 c4 10             	add    $0x10,%esp
 8048ce4:	b8 01 00 00 00       	mov    $0x1,%eax
 8048ce9:	c9                   	leave  
 8048cea:	c3                   	ret    

08048ceb <testn>:
 8048ceb:	55                   	push   %ebp
 8048cec:	89 e5                	mov    %esp,%ebp
 8048cee:	83 ec 18             	sub    $0x18,%esp
 8048cf1:	c7 45 f0 ef be ad de 	movl   $0xdeadbeef,-0x10(%ebp)
 8048cf8:	e8 cc ff ff ff       	call   8048cc9 <getbufn>
 8048cfd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048d00:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048d03:	3d ef be ad de       	cmp    $0xdeadbeef,%eax
 8048d08:	74 12                	je     8048d1c <testn+0x31>
 8048d0a:	83 ec 0c             	sub    $0xc,%esp
 8048d0d:	68 80 a3 04 08       	push   $0x804a380
 8048d12:	e8 e9 fb ff ff       	call   8048900 <puts@plt>
 8048d17:	83 c4 10             	add    $0x10,%esp
 8048d1a:	eb 41                	jmp    8048d5d <testn+0x72>
 8048d1c:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048d1f:	a1 20 b2 04 08       	mov    0x804b220,%eax
 8048d24:	39 c2                	cmp    %eax,%edx
 8048d26:	75 22                	jne    8048d4a <testn+0x5f>
 8048d28:	83 ec 08             	sub    $0x8,%esp
 8048d2b:	ff 75 f4             	pushl  -0xc(%ebp)
 8048d2e:	68 e4 a3 04 08       	push   $0x804a3e4
 8048d33:	e8 f8 fa ff ff       	call   8048830 <printf@plt>
 8048d38:	83 c4 10             	add    $0x10,%esp
 8048d3b:	83 ec 0c             	sub    $0xc,%esp
 8048d3e:	6a 04                	push   $0x4
 8048d40:	e8 1b 07 00 00       	call   8049460 <validate>
 8048d45:	83 c4 10             	add    $0x10,%esp
 8048d48:	eb 13                	jmp    8048d5d <testn+0x72>
 8048d4a:	83 ec 08             	sub    $0x8,%esp
 8048d4d:	ff 75 f4             	pushl  -0xc(%ebp)
 8048d50:	68 04 a4 04 08       	push   $0x804a404
 8048d55:	e8 d6 fa ff ff       	call   8048830 <printf@plt>
 8048d5a:	83 c4 10             	add    $0x10,%esp
 8048d5d:	c9                   	leave  
 8048d5e:	c3                   	ret    

08048d5f <save_char>:
 8048d5f:	55                   	push   %ebp
 8048d60:	89 e5                	mov    %esp,%ebp
 8048d62:	83 ec 04             	sub    $0x4,%esp
 8048d65:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d68:	88 45 fc             	mov    %al,-0x4(%ebp)
 8048d6b:	a1 2c b2 04 08       	mov    0x804b22c,%eax
 8048d70:	3d ff 03 00 00       	cmp    $0x3ff,%eax
 8048d75:	7f 6c                	jg     8048de3 <save_char+0x84>
 8048d77:	8b 15 2c b2 04 08    	mov    0x804b22c,%edx
 8048d7d:	89 d0                	mov    %edx,%eax
 8048d7f:	01 c0                	add    %eax,%eax
 8048d81:	01 c2                	add    %eax,%edx
 8048d83:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 8048d87:	c0 f8 04             	sar    $0x4,%al
 8048d8a:	0f be c0             	movsbl %al,%eax
 8048d8d:	83 e0 0f             	and    $0xf,%eax
 8048d90:	0f b6 80 a4 b1 04 08 	movzbl 0x804b1a4(%eax),%eax
 8048d97:	88 82 80 c2 04 08    	mov    %al,0x804c280(%edx)
 8048d9d:	8b 15 2c b2 04 08    	mov    0x804b22c,%edx
 8048da3:	89 d0                	mov    %edx,%eax
 8048da5:	01 c0                	add    %eax,%eax
 8048da7:	01 d0                	add    %edx,%eax
 8048da9:	8d 50 01             	lea    0x1(%eax),%edx
 8048dac:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
 8048db0:	83 e0 0f             	and    $0xf,%eax
 8048db3:	0f b6 80 a4 b1 04 08 	movzbl 0x804b1a4(%eax),%eax
 8048dba:	88 82 80 c2 04 08    	mov    %al,0x804c280(%edx)
 8048dc0:	8b 15 2c b2 04 08    	mov    0x804b22c,%edx
 8048dc6:	89 d0                	mov    %edx,%eax
 8048dc8:	01 c0                	add    %eax,%eax
 8048dca:	01 d0                	add    %edx,%eax
 8048dcc:	83 c0 02             	add    $0x2,%eax
 8048dcf:	c6 80 80 c2 04 08 20 	movb   $0x20,0x804c280(%eax)
 8048dd6:	a1 2c b2 04 08       	mov    0x804b22c,%eax
 8048ddb:	83 c0 01             	add    $0x1,%eax
 8048dde:	a3 2c b2 04 08       	mov    %eax,0x804b22c
 8048de3:	c9                   	leave  
 8048de4:	c3                   	ret    

08048de5 <save_term>:
 8048de5:	55                   	push   %ebp
 8048de6:	89 e5                	mov    %esp,%ebp
 8048de8:	8b 15 2c b2 04 08    	mov    0x804b22c,%edx
 8048dee:	89 d0                	mov    %edx,%eax
 8048df0:	01 c0                	add    %eax,%eax
 8048df2:	01 d0                	add    %edx,%eax
 8048df4:	c6 80 80 c2 04 08 00 	movb   $0x0,0x804c280(%eax)
 8048dfb:	5d                   	pop    %ebp
 8048dfc:	c3                   	ret    

08048dfd <Gets>:
 8048dfd:	55                   	push   %ebp
 8048dfe:	89 e5                	mov    %esp,%ebp
 8048e00:	83 ec 18             	sub    $0x18,%esp
 8048e03:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e06:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e09:	c7 05 2c b2 04 08 00 	movl   $0x0,0x804b22c
 8048e10:	00 00 00 
 8048e13:	eb 1d                	jmp    8048e32 <Gets+0x35>
 8048e15:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e18:	8d 50 01             	lea    0x1(%eax),%edx
 8048e1b:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048e1e:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048e21:	88 10                	mov    %dl,(%eax)
 8048e23:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e26:	0f be c0             	movsbl %al,%eax
 8048e29:	50                   	push   %eax
 8048e2a:	e8 30 ff ff ff       	call   8048d5f <save_char>
 8048e2f:	83 c4 04             	add    $0x4,%esp
 8048e32:	a1 1c b2 04 08       	mov    0x804b21c,%eax
 8048e37:	83 ec 0c             	sub    $0xc,%esp
 8048e3a:	50                   	push   %eax
 8048e3b:	e8 50 fa ff ff       	call   8048890 <_IO_getc@plt>
 8048e40:	83 c4 10             	add    $0x10,%esp
 8048e43:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048e46:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
 8048e4a:	74 06                	je     8048e52 <Gets+0x55>
 8048e4c:	83 7d f0 0a          	cmpl   $0xa,-0x10(%ebp)
 8048e50:	75 c3                	jne    8048e15 <Gets+0x18>
 8048e52:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e55:	8d 50 01             	lea    0x1(%eax),%edx
 8048e58:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048e5b:	c6 00 00             	movb   $0x0,(%eax)
 8048e5e:	e8 82 ff ff ff       	call   8048de5 <save_term>
 8048e63:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e66:	c9                   	leave  
 8048e67:	c3                   	ret    

08048e68 <usage>:
 8048e68:	55                   	push   %ebp
 8048e69:	89 e5                	mov    %esp,%ebp
 8048e6b:	83 ec 08             	sub    $0x8,%esp
 8048e6e:	83 ec 08             	sub    $0x8,%esp
 8048e71:	ff 75 08             	pushl  0x8(%ebp)
 8048e74:	68 20 a4 04 08       	push   $0x804a420
 8048e79:	e8 b2 f9 ff ff       	call   8048830 <printf@plt>
 8048e7e:	83 c4 10             	add    $0x10,%esp
 8048e81:	83 ec 0c             	sub    $0xc,%esp
 8048e84:	68 3e a4 04 08       	push   $0x804a43e
 8048e89:	e8 72 fa ff ff       	call   8048900 <puts@plt>
 8048e8e:	83 c4 10             	add    $0x10,%esp
 8048e91:	83 ec 0c             	sub    $0xc,%esp
 8048e94:	68 54 a4 04 08       	push   $0x804a454
 8048e99:	e8 62 fa ff ff       	call   8048900 <puts@plt>
 8048e9e:	83 c4 10             	add    $0x10,%esp
 8048ea1:	83 ec 0c             	sub    $0xc,%esp
 8048ea4:	68 70 a4 04 08       	push   $0x804a470
 8048ea9:	e8 52 fa ff ff       	call   8048900 <puts@plt>
 8048eae:	83 c4 10             	add    $0x10,%esp
 8048eb1:	83 ec 0c             	sub    $0xc,%esp
 8048eb4:	68 ac a4 04 08       	push   $0x804a4ac
 8048eb9:	e8 42 fa ff ff       	call   8048900 <puts@plt>
 8048ebe:	83 c4 10             	add    $0x10,%esp
 8048ec1:	83 ec 0c             	sub    $0xc,%esp
 8048ec4:	6a 00                	push   $0x0
 8048ec6:	e8 55 fa ff ff       	call   8048920 <exit@plt>

08048ecb <bushandler>:
 8048ecb:	55                   	push   %ebp
 8048ecc:	89 e5                	mov    %esp,%ebp
 8048ece:	83 ec 08             	sub    $0x8,%esp
 8048ed1:	83 ec 0c             	sub    $0xc,%esp
 8048ed4:	68 d4 a4 04 08       	push   $0x804a4d4
 8048ed9:	e8 22 fa ff ff       	call   8048900 <puts@plt>
 8048ede:	83 c4 10             	add    $0x10,%esp
 8048ee1:	83 ec 0c             	sub    $0xc,%esp
 8048ee4:	68 f4 a4 04 08       	push   $0x804a4f4
 8048ee9:	e8 12 fa ff ff       	call   8048900 <puts@plt>
 8048eee:	83 c4 10             	add    $0x10,%esp
 8048ef1:	83 ec 0c             	sub    $0xc,%esp
 8048ef4:	6a 00                	push   $0x0
 8048ef6:	e8 25 fa ff ff       	call   8048920 <exit@plt>

08048efb <seghandler>:
 8048efb:	55                   	push   %ebp
 8048efc:	89 e5                	mov    %esp,%ebp
 8048efe:	83 ec 08             	sub    $0x8,%esp
 8048f01:	83 ec 0c             	sub    $0xc,%esp
 8048f04:	68 0c a5 04 08       	push   $0x804a50c
 8048f09:	e8 f2 f9 ff ff       	call   8048900 <puts@plt>
 8048f0e:	83 c4 10             	add    $0x10,%esp
 8048f11:	83 ec 0c             	sub    $0xc,%esp
 8048f14:	68 f4 a4 04 08       	push   $0x804a4f4
 8048f19:	e8 e2 f9 ff ff       	call   8048900 <puts@plt>
 8048f1e:	83 c4 10             	add    $0x10,%esp
 8048f21:	83 ec 0c             	sub    $0xc,%esp
 8048f24:	6a 00                	push   $0x0
 8048f26:	e8 f5 f9 ff ff       	call   8048920 <exit@plt>

08048f2b <illegalhandler>:
 8048f2b:	55                   	push   %ebp
 8048f2c:	89 e5                	mov    %esp,%ebp
 8048f2e:	83 ec 08             	sub    $0x8,%esp
 8048f31:	83 ec 0c             	sub    $0xc,%esp
 8048f34:	68 34 a5 04 08       	push   $0x804a534
 8048f39:	e8 c2 f9 ff ff       	call   8048900 <puts@plt>
 8048f3e:	83 c4 10             	add    $0x10,%esp
 8048f41:	83 ec 0c             	sub    $0xc,%esp
 8048f44:	68 f4 a4 04 08       	push   $0x804a4f4
 8048f49:	e8 b2 f9 ff ff       	call   8048900 <puts@plt>
 8048f4e:	83 c4 10             	add    $0x10,%esp
 8048f51:	83 ec 0c             	sub    $0xc,%esp
 8048f54:	6a 00                	push   $0x0
 8048f56:	e8 c5 f9 ff ff       	call   8048920 <exit@plt>

08048f5b <launch>:
 8048f5b:	55                   	push   %ebp
 8048f5c:	89 e5                	mov    %esp,%ebp
 8048f5e:	83 ec 58             	sub    $0x58,%esp
 8048f61:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048f68:	8d 45 b0             	lea    -0x50(%ebp),%eax
 8048f6b:	25 f0 3f 00 00       	and    $0x3ff0,%eax
 8048f70:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f73:	8b 55 0c             	mov    0xc(%ebp),%edx
 8048f76:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f79:	01 d0                	add    %edx,%eax
 8048f7b:	8d 50 0f             	lea    0xf(%eax),%edx
 8048f7e:	b8 10 00 00 00       	mov    $0x10,%eax
 8048f83:	83 e8 01             	sub    $0x1,%eax
 8048f86:	01 d0                	add    %edx,%eax
 8048f88:	b9 10 00 00 00       	mov    $0x10,%ecx
 8048f8d:	ba 00 00 00 00       	mov    $0x0,%edx
 8048f92:	f7 f1                	div    %ecx
 8048f94:	6b c0 10             	imul   $0x10,%eax,%eax
 8048f97:	29 c4                	sub    %eax,%esp
 8048f99:	89 e0                	mov    %esp,%eax
 8048f9b:	83 c0 0f             	add    $0xf,%eax
 8048f9e:	c1 e8 04             	shr    $0x4,%eax
 8048fa1:	c1 e0 04             	shl    $0x4,%eax
 8048fa4:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048fa7:	83 ec 04             	sub    $0x4,%esp
 8048faa:	ff 75 f4             	pushl  -0xc(%ebp)
 8048fad:	68 f4 00 00 00       	push   $0xf4
 8048fb2:	ff 75 f0             	pushl  -0x10(%ebp)
 8048fb5:	e8 f6 f9 ff ff       	call   80489b0 <memset@plt>
 8048fba:	83 c4 10             	add    $0x10,%esp
 8048fbd:	83 ec 0c             	sub    $0xc,%esp
 8048fc0:	68 5f a5 04 08       	push   $0x804a55f
 8048fc5:	e8 66 f8 ff ff       	call   8048830 <printf@plt>
 8048fca:	83 c4 10             	add    $0x10,%esp
 8048fcd:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048fd1:	74 07                	je     8048fda <launch+0x7f>
 8048fd3:	e8 13 fd ff ff       	call   8048ceb <testn>
 8048fd8:	eb 05                	jmp    8048fdf <launch+0x84>
 8048fda:	e8 55 fc ff ff       	call   8048c34 <test>
 8048fdf:	a1 24 b2 04 08       	mov    0x804b224,%eax
 8048fe4:	85 c0                	test   %eax,%eax
 8048fe6:	75 1a                	jne    8049002 <launch+0xa7>
 8048fe8:	83 ec 0c             	sub    $0xc,%esp
 8048feb:	68 f4 a4 04 08       	push   $0x804a4f4
 8048ff0:	e8 0b f9 ff ff       	call   8048900 <puts@plt>
 8048ff5:	83 c4 10             	add    $0x10,%esp
 8048ff8:	c7 05 24 b2 04 08 00 	movl   $0x0,0x804b224
 8048fff:	00 00 00 
 8049002:	c9                   	leave  
 8049003:	c3                   	ret    

08049004 <launcher>:
 8049004:	55                   	push   %ebp
 8049005:	89 e5                	mov    %esp,%ebp
 8049007:	83 ec 18             	sub    $0x18,%esp
 804900a:	8b 45 08             	mov    0x8(%ebp),%eax
 804900d:	a3 30 b2 04 08       	mov    %eax,0x804b230
 8049012:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049015:	a3 34 b2 04 08       	mov    %eax,0x804b234
 804901a:	83 ec 08             	sub    $0x8,%esp
 804901d:	6a 00                	push   $0x0
 804901f:	6a 00                	push   $0x0
 8049021:	68 32 01 00 00       	push   $0x132
 8049026:	6a 07                	push   $0x7
 8049028:	68 00 00 10 00       	push   $0x100000
 804902d:	68 00 60 58 55       	push   $0x55586000
 8049032:	e8 09 f9 ff ff       	call   8048940 <mmap@plt>
 8049037:	83 c4 20             	add    $0x20,%esp
 804903a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804903d:	81 7d f4 00 60 58 55 	cmpl   $0x55586000,-0xc(%ebp)
 8049044:	74 21                	je     8049067 <launcher+0x63>
 8049046:	a1 00 b2 04 08       	mov    0x804b200,%eax
 804904b:	50                   	push   %eax
 804904c:	6a 47                	push   $0x47
 804904e:	6a 01                	push   $0x1
 8049050:	68 6c a5 04 08       	push   $0x804a56c
 8049055:	e8 56 f8 ff ff       	call   80488b0 <fwrite@plt>
 804905a:	83 c4 10             	add    $0x10,%esp
 804905d:	83 ec 0c             	sub    $0xc,%esp
 8049060:	6a 01                	push   $0x1
 8049062:	e8 b9 f8 ff ff       	call   8048920 <exit@plt>
 8049067:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804906a:	05 f8 ff 0f 00       	add    $0xffff8,%eax
 804906f:	a3 40 c2 04 08       	mov    %eax,0x804c240
 8049074:	8b 15 40 c2 04 08    	mov    0x804c240,%edx
 804907a:	89 e0                	mov    %esp,%eax
 804907c:	89 d4                	mov    %edx,%esp
 804907e:	89 c2                	mov    %eax,%edx
 8049080:	89 15 38 b2 04 08    	mov    %edx,0x804b238
 8049086:	8b 15 34 b2 04 08    	mov    0x804b234,%edx
 804908c:	a1 30 b2 04 08       	mov    0x804b230,%eax
 8049091:	83 ec 08             	sub    $0x8,%esp
 8049094:	52                   	push   %edx
 8049095:	50                   	push   %eax
 8049096:	e8 c0 fe ff ff       	call   8048f5b <launch>
 804909b:	83 c4 10             	add    $0x10,%esp
 804909e:	a1 38 b2 04 08       	mov    0x804b238,%eax
 80490a3:	89 c4                	mov    %eax,%esp
 80490a5:	83 ec 08             	sub    $0x8,%esp
 80490a8:	68 00 00 10 00       	push   $0x100000
 80490ad:	ff 75 f4             	pushl  -0xc(%ebp)
 80490b0:	e8 2b f9 ff ff       	call   80489e0 <munmap@plt>
 80490b5:	83 c4 10             	add    $0x10,%esp
 80490b8:	c9                   	leave  
 80490b9:	c3                   	ret    

080490ba <uniqueval>:
 80490ba:	55                   	push   %ebp
 80490bb:	89 e5                	mov    %esp,%ebp
 80490bd:	83 ec 08             	sub    $0x8,%esp
 80490c0:	e8 1b f8 ff ff       	call   80488e0 <getpid@plt>
 80490c5:	83 ec 0c             	sub    $0xc,%esp
 80490c8:	50                   	push   %eax
 80490c9:	e8 52 f7 ff ff       	call   8048820 <srandom@plt>
 80490ce:	83 c4 10             	add    $0x10,%esp
 80490d1:	e8 3a f9 ff ff       	call   8048a10 <random@plt>
 80490d6:	c9                   	leave  
 80490d7:	c3                   	ret    

080490d8 <main>:
 80490d8:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80490dc:	83 e4 f0             	and    $0xfffffff0,%esp
 80490df:	ff 71 fc             	pushl  -0x4(%ecx)
 80490e2:	55                   	push   %ebp
 80490e3:	89 e5                	mov    %esp,%ebp
 80490e5:	53                   	push   %ebx
 80490e6:	51                   	push   %ecx
 80490e7:	83 ec 20             	sub    $0x20,%esp
 80490ea:	89 cb                	mov    %ecx,%ebx
 80490ec:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 80490f3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80490fa:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 8049101:	83 ec 08             	sub    $0x8,%esp
 8049104:	68 fb 8e 04 08       	push   $0x8048efb
 8049109:	6a 0b                	push   $0xb
 804910b:	e8 60 f7 ff ff       	call   8048870 <signal@plt>
 8049110:	83 c4 10             	add    $0x10,%esp
 8049113:	83 ec 08             	sub    $0x8,%esp
 8049116:	68 cb 8e 04 08       	push   $0x8048ecb
 804911b:	6a 07                	push   $0x7
 804911d:	e8 4e f7 ff ff       	call   8048870 <signal@plt>
 8049122:	83 c4 10             	add    $0x10,%esp
 8049125:	83 ec 08             	sub    $0x8,%esp
 8049128:	68 2b 8f 04 08       	push   $0x8048f2b
 804912d:	6a 04                	push   $0x4
 804912f:	e8 3c f7 ff ff       	call   8048870 <signal@plt>
 8049134:	83 c4 10             	add    $0x10,%esp
 8049137:	a1 04 b2 04 08       	mov    0x804b204,%eax
 804913c:	a3 1c b2 04 08       	mov    %eax,0x804b21c
 8049141:	e9 8f 00 00 00       	jmp    80491d5 <main+0xfd>
 8049146:	0f be 45 e7          	movsbl -0x19(%ebp),%eax
 804914a:	83 e8 67             	sub    $0x67,%eax
 804914d:	83 f8 0e             	cmp    $0xe,%eax
 8049150:	77 72                	ja     80491c4 <main+0xec>
 8049152:	8b 04 85 04 a6 04 08 	mov    0x804a604(,%eax,4),%eax
 8049159:	ff e0                	jmp    *%eax
 804915b:	8b 43 04             	mov    0x4(%ebx),%eax
 804915e:	8b 00                	mov    (%eax),%eax
 8049160:	83 ec 0c             	sub    $0xc,%esp
 8049163:	50                   	push   %eax
 8049164:	e8 ff fc ff ff       	call   8048e68 <usage>
 8049169:	83 c4 10             	add    $0x10,%esp
 804916c:	eb 67                	jmp    80491d5 <main+0xfd>
 804916e:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8049175:	c7 45 ec 05 00 00 00 	movl   $0x5,-0x14(%ebp)
 804917c:	eb 57                	jmp    80491d5 <main+0xfd>
 804917e:	a1 08 b2 04 08       	mov    0x804b208,%eax
 8049183:	83 ec 0c             	sub    $0xc,%esp
 8049186:	50                   	push   %eax
 8049187:	e8 b4 f6 ff ff       	call   8048840 <strdup@plt>
 804918c:	83 c4 10             	add    $0x10,%esp
 804918f:	a3 10 b2 04 08       	mov    %eax,0x804b210
 8049194:	a1 10 b2 04 08       	mov    0x804b210,%eax
 8049199:	83 ec 0c             	sub    $0xc,%esp
 804919c:	50                   	push   %eax
 804919d:	e8 64 10 00 00       	call   804a206 <gencookie>
 80491a2:	83 c4 10             	add    $0x10,%esp
 80491a5:	a3 20 b2 04 08       	mov    %eax,0x804b220
 80491aa:	eb 29                	jmp    80491d5 <main+0xfd>
 80491ac:	c7 05 14 b2 04 08 01 	movl   $0x1,0x804b214
 80491b3:	00 00 00 
 80491b6:	eb 1d                	jmp    80491d5 <main+0xfd>
 80491b8:	c7 05 18 b2 04 08 01 	movl   $0x1,0x804b218
 80491bf:	00 00 00 
 80491c2:	eb 11                	jmp    80491d5 <main+0xfd>
 80491c4:	8b 43 04             	mov    0x4(%ebx),%eax
 80491c7:	8b 00                	mov    (%eax),%eax
 80491c9:	83 ec 0c             	sub    $0xc,%esp
 80491cc:	50                   	push   %eax
 80491cd:	e8 96 fc ff ff       	call   8048e68 <usage>
 80491d2:	83 c4 10             	add    $0x10,%esp
 80491d5:	83 ec 04             	sub    $0x4,%esp
 80491d8:	68 b4 a5 04 08       	push   $0x804a5b4
 80491dd:	ff 73 04             	pushl  0x4(%ebx)
 80491e0:	ff 33                	pushl  (%ebx)
 80491e2:	e8 99 f7 ff ff       	call   8048980 <getopt@plt>
 80491e7:	83 c4 10             	add    $0x10,%esp
 80491ea:	88 45 e7             	mov    %al,-0x19(%ebp)
 80491ed:	80 7d e7 ff          	cmpb   $0xff,-0x19(%ebp)
 80491f1:	0f 85 4f ff ff ff    	jne    8049146 <main+0x6e>
 80491f7:	a1 10 b2 04 08       	mov    0x804b210,%eax
 80491fc:	85 c0                	test   %eax,%eax
 80491fe:	75 27                	jne    8049227 <main+0x14f>
 8049200:	8b 43 04             	mov    0x4(%ebx),%eax
 8049203:	8b 00                	mov    (%eax),%eax
 8049205:	83 ec 08             	sub    $0x8,%esp
 8049208:	50                   	push   %eax
 8049209:	68 bc a5 04 08       	push   $0x804a5bc
 804920e:	e8 1d f6 ff ff       	call   8048830 <printf@plt>
 8049213:	83 c4 10             	add    $0x10,%esp
 8049216:	8b 43 04             	mov    0x4(%ebx),%eax
 8049219:	8b 00                	mov    (%eax),%eax
 804921b:	83 ec 0c             	sub    $0xc,%esp
 804921e:	50                   	push   %eax
 804921f:	e8 44 fc ff ff       	call   8048e68 <usage>
 8049224:	83 c4 10             	add    $0x10,%esp
 8049227:	e8 ef 00 00 00       	call   804931b <initialize_bomb>
 804922c:	a1 10 b2 04 08       	mov    0x804b210,%eax
 8049231:	83 ec 08             	sub    $0x8,%esp
 8049234:	50                   	push   %eax
 8049235:	68 e8 a5 04 08       	push   $0x804a5e8
 804923a:	e8 f1 f5 ff ff       	call   8048830 <printf@plt>
 804923f:	83 c4 10             	add    $0x10,%esp
 8049242:	a1 20 b2 04 08       	mov    0x804b220,%eax
 8049247:	83 ec 08             	sub    $0x8,%esp
 804924a:	50                   	push   %eax
 804924b:	68 f4 a5 04 08       	push   $0x804a5f4
 8049250:	e8 db f5 ff ff       	call   8048830 <printf@plt>
 8049255:	83 c4 10             	add    $0x10,%esp
 8049258:	a1 20 b2 04 08       	mov    0x804b220,%eax
 804925d:	83 ec 0c             	sub    $0xc,%esp
 8049260:	50                   	push   %eax
 8049261:	e8 ba f5 ff ff       	call   8048820 <srandom@plt>
 8049266:	83 c4 10             	add    $0x10,%esp
 8049269:	e8 a2 f7 ff ff       	call   8048a10 <random@plt>
 804926e:	25 f0 0f 00 00       	and    $0xff0,%eax
 8049273:	05 00 01 00 00       	add    $0x100,%eax
 8049278:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804927b:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804927e:	83 ec 08             	sub    $0x8,%esp
 8049281:	6a 04                	push   $0x4
 8049283:	50                   	push   %eax
 8049284:	e8 c7 f7 ff ff       	call   8048a50 <calloc@plt>
 8049289:	83 c4 10             	add    $0x10,%esp
 804928c:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804928f:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049292:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049298:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 804929f:	eb 29                	jmp    80492ca <main+0x1f2>
 80492a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80492a4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 80492ab:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80492ae:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
 80492b1:	e8 5a f7 ff ff       	call   8048a10 <random@plt>
 80492b6:	25 f0 00 00 00       	and    $0xf0,%eax
 80492bb:	ba 80 00 00 00       	mov    $0x80,%edx
 80492c0:	29 c2                	sub    %eax,%edx
 80492c2:	89 d0                	mov    %edx,%eax
 80492c4:	89 03                	mov    %eax,(%ebx)
 80492c6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80492ca:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80492cd:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 80492d0:	7c cf                	jl     80492a1 <main+0x1c9>
 80492d2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80492d9:	eb 29                	jmp    8049304 <main+0x22c>
 80492db:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80492de:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 80492e5:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80492e8:	01 d0                	add    %edx,%eax
 80492ea:	8b 10                	mov    (%eax),%edx
 80492ec:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80492ef:	01 d0                	add    %edx,%eax
 80492f1:	83 ec 08             	sub    $0x8,%esp
 80492f4:	50                   	push   %eax
 80492f5:	ff 75 f4             	pushl  -0xc(%ebp)
 80492f8:	e8 07 fd ff ff       	call   8049004 <launcher>
 80492fd:	83 c4 10             	add    $0x10,%esp
 8049300:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049304:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049307:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 804930a:	7c cf                	jl     80492db <main+0x203>
 804930c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049311:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049314:	59                   	pop    %ecx
 8049315:	5b                   	pop    %ebx
 8049316:	5d                   	pop    %ebp
 8049317:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804931a:	c3                   	ret    

0804931b <initialize_bomb>:
 804931b:	55                   	push   %ebp
 804931c:	89 e5                	mov    %esp,%ebp
 804931e:	81 ec 18 24 00 00    	sub    $0x2418,%esp
 8049324:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804932b:	a1 18 b2 04 08       	mov    0x804b218,%eax
 8049330:	85 c0                	test   %eax,%eax
 8049332:	74 0d                	je     8049341 <initialize_bomb+0x26>
 8049334:	83 ec 0c             	sub    $0xc,%esp
 8049337:	6a ff                	push   $0xffffffff
 8049339:	e8 db 0b 00 00       	call   8049f19 <init_timeout>
 804933e:	83 c4 10             	add    $0x10,%esp
 8049341:	a1 14 b2 04 08       	mov    0x804b214,%eax
 8049346:	85 c0                	test   %eax,%eax
 8049348:	0f 84 10 01 00 00    	je     804945e <initialize_bomb+0x143>
 804934e:	83 ec 08             	sub    $0x8,%esp
 8049351:	68 00 04 00 00       	push   $0x400
 8049356:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
 804935c:	50                   	push   %eax
 804935d:	e8 8e f5 ff ff       	call   80488f0 <gethostname@plt>
 8049362:	83 c4 10             	add    $0x10,%esp
 8049365:	85 c0                	test   %eax,%eax
 8049367:	74 1a                	je     8049383 <initialize_bomb+0x68>
 8049369:	83 ec 0c             	sub    $0xc,%esp
 804936c:	68 40 a6 04 08       	push   $0x804a640
 8049371:	e8 8a f5 ff ff       	call   8048900 <puts@plt>
 8049376:	83 c4 10             	add    $0x10,%esp
 8049379:	83 ec 0c             	sub    $0xc,%esp
 804937c:	6a 08                	push   $0x8
 804937e:	e8 9d f5 ff ff       	call   8048920 <exit@plt>
 8049383:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804938a:	eb 2e                	jmp    80493ba <initialize_bomb+0x9f>
 804938c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804938f:	8b 04 85 40 b2 04 08 	mov    0x804b240(,%eax,4),%eax
 8049396:	83 ec 08             	sub    $0x8,%esp
 8049399:	8d 95 f0 fb ff ff    	lea    -0x410(%ebp),%edx
 804939f:	52                   	push   %edx
 80493a0:	50                   	push   %eax
 80493a1:	e8 ea f5 ff ff       	call   8048990 <strcasecmp@plt>
 80493a6:	83 c4 10             	add    $0x10,%esp
 80493a9:	85 c0                	test   %eax,%eax
 80493ab:	75 09                	jne    80493b6 <initialize_bomb+0x9b>
 80493ad:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 80493b4:	eb 12                	jmp    80493c8 <initialize_bomb+0xad>
 80493b6:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 80493ba:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80493bd:	8b 04 85 40 b2 04 08 	mov    0x804b240(,%eax,4),%eax
 80493c4:	85 c0                	test   %eax,%eax
 80493c6:	75 c4                	jne    804938c <initialize_bomb+0x71>
 80493c8:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 80493cf:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 80493d3:	75 52                	jne    8049427 <initialize_bomb+0x10c>
 80493d5:	83 ec 08             	sub    $0x8,%esp
 80493d8:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
 80493de:	50                   	push   %eax
 80493df:	68 78 a6 04 08       	push   $0x804a678
 80493e4:	e8 47 f4 ff ff       	call   8048830 <printf@plt>
 80493e9:	83 c4 10             	add    $0x10,%esp
 80493ec:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80493f3:	eb 1a                	jmp    804940f <initialize_bomb+0xf4>
 80493f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80493f8:	8b 04 85 40 b2 04 08 	mov    0x804b240(,%eax,4),%eax
 80493ff:	83 ec 0c             	sub    $0xc,%esp
 8049402:	50                   	push   %eax
 8049403:	e8 f8 f4 ff ff       	call   8048900 <puts@plt>
 8049408:	83 c4 10             	add    $0x10,%esp
 804940b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804940f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049412:	8b 04 85 40 b2 04 08 	mov    0x804b240(,%eax,4),%eax
 8049419:	85 c0                	test   %eax,%eax
 804941b:	75 d8                	jne    80493f5 <initialize_bomb+0xda>
 804941d:	83 ec 0c             	sub    $0xc,%esp
 8049420:	6a 08                	push   $0x8
 8049422:	e8 f9 f4 ff ff       	call   8048920 <exit@plt>
 8049427:	83 ec 0c             	sub    $0xc,%esp
 804942a:	8d 85 f0 db ff ff    	lea    -0x2410(%ebp),%eax
 8049430:	50                   	push   %eax
 8049431:	e8 21 0b 00 00       	call   8049f57 <init_driver>
 8049436:	83 c4 10             	add    $0x10,%esp
 8049439:	85 c0                	test   %eax,%eax
 804943b:	79 21                	jns    804945e <initialize_bomb+0x143>
 804943d:	83 ec 08             	sub    $0x8,%esp
 8049440:	8d 85 f0 db ff ff    	lea    -0x2410(%ebp),%eax
 8049446:	50                   	push   %eax
 8049447:	68 b3 a6 04 08       	push   $0x804a6b3
 804944c:	e8 df f3 ff ff       	call   8048830 <printf@plt>
 8049451:	83 c4 10             	add    $0x10,%esp
 8049454:	83 ec 0c             	sub    $0xc,%esp
 8049457:	6a 08                	push   $0x8
 8049459:	e8 c2 f4 ff ff       	call   8048920 <exit@plt>
 804945e:	c9                   	leave  
 804945f:	c3                   	ret    

08049460 <validate>:
 8049460:	55                   	push   %ebp
 8049461:	89 e5                	mov    %esp,%ebp
 8049463:	81 ec 18 40 00 00    	sub    $0x4018,%esp
 8049469:	a1 10 b2 04 08       	mov    0x804b210,%eax
 804946e:	85 c0                	test   %eax,%eax
 8049470:	75 15                	jne    8049487 <validate+0x27>
 8049472:	83 ec 0c             	sub    $0xc,%esp
 8049475:	68 c8 a6 04 08       	push   $0x804a6c8
 804947a:	e8 81 f4 ff ff       	call   8048900 <puts@plt>
 804947f:	83 c4 10             	add    $0x10,%esp
 8049482:	e9 36 01 00 00       	jmp    80495bd <validate+0x15d>
 8049487:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804948b:	78 06                	js     8049493 <validate+0x33>
 804948d:	83 7d 08 04          	cmpl   $0x4,0x8(%ebp)
 8049491:	7e 15                	jle    80494a8 <validate+0x48>
 8049493:	83 ec 0c             	sub    $0xc,%esp
 8049496:	68 f4 a6 04 08       	push   $0x804a6f4
 804949b:	e8 60 f4 ff ff       	call   8048900 <puts@plt>
 80494a0:	83 c4 10             	add    $0x10,%esp
 80494a3:	e9 15 01 00 00       	jmp    80495bd <validate+0x15d>
 80494a8:	c7 05 24 b2 04 08 01 	movl   $0x1,0x804b224
 80494af:	00 00 00 
 80494b2:	8b 45 08             	mov    0x8(%ebp),%eax
 80494b5:	8b 04 85 b4 b1 04 08 	mov    0x804b1b4(,%eax,4),%eax
 80494bc:	8d 50 ff             	lea    -0x1(%eax),%edx
 80494bf:	8b 45 08             	mov    0x8(%ebp),%eax
 80494c2:	89 14 85 b4 b1 04 08 	mov    %edx,0x804b1b4(,%eax,4)
 80494c9:	8b 45 08             	mov    0x8(%ebp),%eax
 80494cc:	8b 04 85 b4 b1 04 08 	mov    0x804b1b4(,%eax,4),%eax
 80494d3:	85 c0                	test   %eax,%eax
 80494d5:	7e 15                	jle    80494ec <validate+0x8c>
 80494d7:	83 ec 0c             	sub    $0xc,%esp
 80494da:	68 1a a7 04 08       	push   $0x804a71a
 80494df:	e8 1c f4 ff ff       	call   8048900 <puts@plt>
 80494e4:	83 c4 10             	add    $0x10,%esp
 80494e7:	e9 d1 00 00 00       	jmp    80495bd <validate+0x15d>
 80494ec:	83 ec 0c             	sub    $0xc,%esp
 80494ef:	68 25 a7 04 08       	push   $0x804a725
 80494f4:	e8 07 f4 ff ff       	call   8048900 <puts@plt>
 80494f9:	83 c4 10             	add    $0x10,%esp
 80494fc:	a1 14 b2 04 08       	mov    0x804b214,%eax
 8049501:	85 c0                	test   %eax,%eax
 8049503:	0f 84 a4 00 00 00    	je     80495ad <validate+0x14d>
 8049509:	83 ec 0c             	sub    $0xc,%esp
 804950c:	68 80 c2 04 08       	push   $0x804c280
 8049511:	e8 3a f4 ff ff       	call   8048950 <strlen@plt>
 8049516:	83 c4 10             	add    $0x10,%esp
 8049519:	83 c0 20             	add    $0x20,%eax
 804951c:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049521:	76 15                	jbe    8049538 <validate+0xd8>
 8049523:	83 ec 0c             	sub    $0xc,%esp
 8049526:	68 2c a7 04 08       	push   $0x804a72c
 804952b:	e8 d0 f3 ff ff       	call   8048900 <puts@plt>
 8049530:	83 c4 10             	add    $0x10,%esp
 8049533:	e9 85 00 00 00       	jmp    80495bd <validate+0x15d>
 8049538:	a1 20 b2 04 08       	mov    0x804b220,%eax
 804953d:	83 ec 0c             	sub    $0xc,%esp
 8049540:	68 80 c2 04 08       	push   $0x804c280
 8049545:	50                   	push   %eax
 8049546:	ff 75 08             	pushl  0x8(%ebp)
 8049549:	68 63 a7 04 08       	push   $0x804a763
 804954e:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 8049554:	50                   	push   %eax
 8049555:	e8 96 f4 ff ff       	call   80489f0 <sprintf@plt>
 804955a:	83 c4 20             	add    $0x20,%esp
 804955d:	a1 10 b2 04 08       	mov    0x804b210,%eax
 8049562:	8d 95 f4 bf ff ff    	lea    -0x400c(%ebp),%edx
 8049568:	52                   	push   %edx
 8049569:	6a 00                	push   $0x0
 804956b:	8d 95 f4 df ff ff    	lea    -0x200c(%ebp),%edx
 8049571:	52                   	push   %edx
 8049572:	50                   	push   %eax
 8049573:	e8 85 0b 00 00       	call   804a0fd <driver_post>
 8049578:	83 c4 10             	add    $0x10,%esp
 804957b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804957e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049582:	75 12                	jne    8049596 <validate+0x136>
 8049584:	83 ec 0c             	sub    $0xc,%esp
 8049587:	68 6c a7 04 08       	push   $0x804a76c
 804958c:	e8 6f f3 ff ff       	call   8048900 <puts@plt>
 8049591:	83 c4 10             	add    $0x10,%esp
 8049594:	eb 17                	jmp    80495ad <validate+0x14d>
 8049596:	83 ec 08             	sub    $0x8,%esp
 8049599:	8d 85 f4 bf ff ff    	lea    -0x400c(%ebp),%eax
 804959f:	50                   	push   %eax
 80495a0:	68 9c a7 04 08       	push   $0x804a79c
 80495a5:	e8 86 f2 ff ff       	call   8048830 <printf@plt>
 80495aa:	83 c4 10             	add    $0x10,%esp
 80495ad:	83 ec 0c             	sub    $0xc,%esp
 80495b0:	68 da a7 04 08       	push   $0x804a7da
 80495b5:	e8 46 f3 ff ff       	call   8048900 <puts@plt>
 80495ba:	83 c4 10             	add    $0x10,%esp
 80495bd:	c9                   	leave  
 80495be:	c3                   	ret    

080495bf <sigalrm_handler>:
 80495bf:	55                   	push   %ebp
 80495c0:	89 e5                	mov    %esp,%ebp
 80495c2:	83 ec 08             	sub    $0x8,%esp
 80495c5:	83 ec 08             	sub    $0x8,%esp
 80495c8:	6a 05                	push   $0x5
 80495ca:	68 e4 a7 04 08       	push   $0x804a7e4
 80495cf:	e8 5c f2 ff ff       	call   8048830 <printf@plt>
 80495d4:	83 c4 10             	add    $0x10,%esp
 80495d7:	83 ec 0c             	sub    $0xc,%esp
 80495da:	6a 01                	push   $0x1
 80495dc:	e8 3f f3 ff ff       	call   8048920 <exit@plt>

080495e1 <rio_readinitb>:
 80495e1:	55                   	push   %ebp
 80495e2:	89 e5                	mov    %esp,%ebp
 80495e4:	8b 45 08             	mov    0x8(%ebp),%eax
 80495e7:	8b 55 0c             	mov    0xc(%ebp),%edx
 80495ea:	89 10                	mov    %edx,(%eax)
 80495ec:	8b 45 08             	mov    0x8(%ebp),%eax
 80495ef:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 80495f6:	8b 45 08             	mov    0x8(%ebp),%eax
 80495f9:	8d 50 0c             	lea    0xc(%eax),%edx
 80495fc:	8b 45 08             	mov    0x8(%ebp),%eax
 80495ff:	89 50 08             	mov    %edx,0x8(%eax)
 8049602:	5d                   	pop    %ebp
 8049603:	c3                   	ret    

08049604 <rio_read>:
 8049604:	55                   	push   %ebp
 8049605:	89 e5                	mov    %esp,%ebp
 8049607:	83 ec 18             	sub    $0x18,%esp
 804960a:	eb 5f                	jmp    804966b <rio_read+0x67>
 804960c:	8b 45 08             	mov    0x8(%ebp),%eax
 804960f:	8d 50 0c             	lea    0xc(%eax),%edx
 8049612:	8b 45 08             	mov    0x8(%ebp),%eax
 8049615:	8b 00                	mov    (%eax),%eax
 8049617:	83 ec 04             	sub    $0x4,%esp
 804961a:	68 00 20 00 00       	push   $0x2000
 804961f:	52                   	push   %edx
 8049620:	50                   	push   %eax
 8049621:	e8 ea f1 ff ff       	call   8048810 <read@plt>
 8049626:	83 c4 10             	add    $0x10,%esp
 8049629:	89 c2                	mov    %eax,%edx
 804962b:	8b 45 08             	mov    0x8(%ebp),%eax
 804962e:	89 50 04             	mov    %edx,0x4(%eax)
 8049631:	8b 45 08             	mov    0x8(%ebp),%eax
 8049634:	8b 40 04             	mov    0x4(%eax),%eax
 8049637:	85 c0                	test   %eax,%eax
 8049639:	79 13                	jns    804964e <rio_read+0x4a>
 804963b:	e8 80 f3 ff ff       	call   80489c0 <__errno_location@plt>
 8049640:	8b 00                	mov    (%eax),%eax
 8049642:	83 f8 04             	cmp    $0x4,%eax
 8049645:	74 24                	je     804966b <rio_read+0x67>
 8049647:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804964c:	eb 7f                	jmp    80496cd <rio_read+0xc9>
 804964e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049651:	8b 40 04             	mov    0x4(%eax),%eax
 8049654:	85 c0                	test   %eax,%eax
 8049656:	75 07                	jne    804965f <rio_read+0x5b>
 8049658:	b8 00 00 00 00       	mov    $0x0,%eax
 804965d:	eb 6e                	jmp    80496cd <rio_read+0xc9>
 804965f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049662:	8d 50 0c             	lea    0xc(%eax),%edx
 8049665:	8b 45 08             	mov    0x8(%ebp),%eax
 8049668:	89 50 08             	mov    %edx,0x8(%eax)
 804966b:	8b 45 08             	mov    0x8(%ebp),%eax
 804966e:	8b 40 04             	mov    0x4(%eax),%eax
 8049671:	85 c0                	test   %eax,%eax
 8049673:	7e 97                	jle    804960c <rio_read+0x8>
 8049675:	8b 45 10             	mov    0x10(%ebp),%eax
 8049678:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804967b:	8b 45 08             	mov    0x8(%ebp),%eax
 804967e:	8b 40 04             	mov    0x4(%eax),%eax
 8049681:	3b 45 10             	cmp    0x10(%ebp),%eax
 8049684:	73 09                	jae    804968f <rio_read+0x8b>
 8049686:	8b 45 08             	mov    0x8(%ebp),%eax
 8049689:	8b 40 04             	mov    0x4(%eax),%eax
 804968c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804968f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049692:	8b 45 08             	mov    0x8(%ebp),%eax
 8049695:	8b 40 08             	mov    0x8(%eax),%eax
 8049698:	83 ec 04             	sub    $0x4,%esp
 804969b:	52                   	push   %edx
 804969c:	50                   	push   %eax
 804969d:	ff 75 0c             	pushl  0xc(%ebp)
 80496a0:	e8 ab f1 ff ff       	call   8048850 <memcpy@plt>
 80496a5:	83 c4 10             	add    $0x10,%esp
 80496a8:	8b 45 08             	mov    0x8(%ebp),%eax
 80496ab:	8b 50 08             	mov    0x8(%eax),%edx
 80496ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496b1:	01 c2                	add    %eax,%edx
 80496b3:	8b 45 08             	mov    0x8(%ebp),%eax
 80496b6:	89 50 08             	mov    %edx,0x8(%eax)
 80496b9:	8b 45 08             	mov    0x8(%ebp),%eax
 80496bc:	8b 40 04             	mov    0x4(%eax),%eax
 80496bf:	2b 45 f4             	sub    -0xc(%ebp),%eax
 80496c2:	89 c2                	mov    %eax,%edx
 80496c4:	8b 45 08             	mov    0x8(%ebp),%eax
 80496c7:	89 50 04             	mov    %edx,0x4(%eax)
 80496ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496cd:	c9                   	leave  
 80496ce:	c3                   	ret    

080496cf <rio_readlineb>:
 80496cf:	55                   	push   %ebp
 80496d0:	89 e5                	mov    %esp,%ebp
 80496d2:	83 ec 18             	sub    $0x18,%esp
 80496d5:	8b 45 0c             	mov    0xc(%ebp),%eax
 80496d8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80496db:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 80496e2:	eb 56                	jmp    804973a <rio_readlineb+0x6b>
 80496e4:	83 ec 04             	sub    $0x4,%esp
 80496e7:	6a 01                	push   $0x1
 80496e9:	8d 45 eb             	lea    -0x15(%ebp),%eax
 80496ec:	50                   	push   %eax
 80496ed:	ff 75 08             	pushl  0x8(%ebp)
 80496f0:	e8 0f ff ff ff       	call   8049604 <rio_read>
 80496f5:	83 c4 10             	add    $0x10,%esp
 80496f8:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80496fb:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 80496ff:	75 19                	jne    804971a <rio_readlineb+0x4b>
 8049701:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049704:	8d 50 01             	lea    0x1(%eax),%edx
 8049707:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804970a:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
 804970e:	88 10                	mov    %dl,(%eax)
 8049710:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
 8049714:	3c 0a                	cmp    $0xa,%al
 8049716:	75 1e                	jne    8049736 <rio_readlineb+0x67>
 8049718:	eb 28                	jmp    8049742 <rio_readlineb+0x73>
 804971a:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804971e:	75 0f                	jne    804972f <rio_readlineb+0x60>
 8049720:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 8049724:	75 07                	jne    804972d <rio_readlineb+0x5e>
 8049726:	b8 00 00 00 00       	mov    $0x0,%eax
 804972b:	eb 1e                	jmp    804974b <rio_readlineb+0x7c>
 804972d:	eb 13                	jmp    8049742 <rio_readlineb+0x73>
 804972f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049734:	eb 15                	jmp    804974b <rio_readlineb+0x7c>
 8049736:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804973a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804973d:	3b 45 10             	cmp    0x10(%ebp),%eax
 8049740:	72 a2                	jb     80496e4 <rio_readlineb+0x15>
 8049742:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049745:	c6 00 00             	movb   $0x0,(%eax)
 8049748:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804974b:	c9                   	leave  
 804974c:	c3                   	ret    

0804974d <rio_writen>:
 804974d:	55                   	push   %ebp
 804974e:	89 e5                	mov    %esp,%ebp
 8049750:	83 ec 18             	sub    $0x18,%esp
 8049753:	8b 45 10             	mov    0x10(%ebp),%eax
 8049756:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049759:	8b 45 0c             	mov    0xc(%ebp),%eax
 804975c:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804975f:	eb 45                	jmp    80497a6 <rio_writen+0x59>
 8049761:	83 ec 04             	sub    $0x4,%esp
 8049764:	ff 75 f4             	pushl  -0xc(%ebp)
 8049767:	ff 75 ec             	pushl  -0x14(%ebp)
 804976a:	ff 75 08             	pushl  0x8(%ebp)
 804976d:	e8 fe f1 ff ff       	call   8048970 <write@plt>
 8049772:	83 c4 10             	add    $0x10,%esp
 8049775:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049778:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804977c:	7f 1c                	jg     804979a <rio_writen+0x4d>
 804977e:	e8 3d f2 ff ff       	call   80489c0 <__errno_location@plt>
 8049783:	8b 00                	mov    (%eax),%eax
 8049785:	83 f8 04             	cmp    $0x4,%eax
 8049788:	75 09                	jne    8049793 <rio_writen+0x46>
 804978a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049791:	eb 07                	jmp    804979a <rio_writen+0x4d>
 8049793:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049798:	eb 15                	jmp    80497af <rio_writen+0x62>
 804979a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804979d:	29 45 f4             	sub    %eax,-0xc(%ebp)
 80497a0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80497a3:	01 45 ec             	add    %eax,-0x14(%ebp)
 80497a6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 80497aa:	75 b5                	jne    8049761 <rio_writen+0x14>
 80497ac:	8b 45 10             	mov    0x10(%ebp),%eax
 80497af:	c9                   	leave  
 80497b0:	c3                   	ret    

080497b1 <urlencode>:
 80497b1:	55                   	push   %ebp
 80497b2:	89 e5                	mov    %esp,%ebp
 80497b4:	83 ec 18             	sub    $0x18,%esp
 80497b7:	83 ec 0c             	sub    $0xc,%esp
 80497ba:	ff 75 08             	pushl  0x8(%ebp)
 80497bd:	e8 8e f1 ff ff       	call   8048950 <strlen@plt>
 80497c2:	83 c4 10             	add    $0x10,%esp
 80497c5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80497c8:	e9 08 01 00 00       	jmp    80498d5 <urlencode+0x124>
 80497cd:	8b 45 08             	mov    0x8(%ebp),%eax
 80497d0:	0f b6 00             	movzbl (%eax),%eax
 80497d3:	3c 2a                	cmp    $0x2a,%al
 80497d5:	74 5a                	je     8049831 <urlencode+0x80>
 80497d7:	8b 45 08             	mov    0x8(%ebp),%eax
 80497da:	0f b6 00             	movzbl (%eax),%eax
 80497dd:	3c 2d                	cmp    $0x2d,%al
 80497df:	74 50                	je     8049831 <urlencode+0x80>
 80497e1:	8b 45 08             	mov    0x8(%ebp),%eax
 80497e4:	0f b6 00             	movzbl (%eax),%eax
 80497e7:	3c 2e                	cmp    $0x2e,%al
 80497e9:	74 46                	je     8049831 <urlencode+0x80>
 80497eb:	8b 45 08             	mov    0x8(%ebp),%eax
 80497ee:	0f b6 00             	movzbl (%eax),%eax
 80497f1:	3c 5f                	cmp    $0x5f,%al
 80497f3:	74 3c                	je     8049831 <urlencode+0x80>
 80497f5:	8b 45 08             	mov    0x8(%ebp),%eax
 80497f8:	0f b6 00             	movzbl (%eax),%eax
 80497fb:	3c 2f                	cmp    $0x2f,%al
 80497fd:	76 0a                	jbe    8049809 <urlencode+0x58>
 80497ff:	8b 45 08             	mov    0x8(%ebp),%eax
 8049802:	0f b6 00             	movzbl (%eax),%eax
 8049805:	3c 39                	cmp    $0x39,%al
 8049807:	76 28                	jbe    8049831 <urlencode+0x80>
 8049809:	8b 45 08             	mov    0x8(%ebp),%eax
 804980c:	0f b6 00             	movzbl (%eax),%eax
 804980f:	3c 40                	cmp    $0x40,%al
 8049811:	76 0a                	jbe    804981d <urlencode+0x6c>
 8049813:	8b 45 08             	mov    0x8(%ebp),%eax
 8049816:	0f b6 00             	movzbl (%eax),%eax
 8049819:	3c 5a                	cmp    $0x5a,%al
 804981b:	76 14                	jbe    8049831 <urlencode+0x80>
 804981d:	8b 45 08             	mov    0x8(%ebp),%eax
 8049820:	0f b6 00             	movzbl (%eax),%eax
 8049823:	3c 60                	cmp    $0x60,%al
 8049825:	76 20                	jbe    8049847 <urlencode+0x96>
 8049827:	8b 45 08             	mov    0x8(%ebp),%eax
 804982a:	0f b6 00             	movzbl (%eax),%eax
 804982d:	3c 7a                	cmp    $0x7a,%al
 804982f:	77 16                	ja     8049847 <urlencode+0x96>
 8049831:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049834:	8d 50 01             	lea    0x1(%eax),%edx
 8049837:	89 55 0c             	mov    %edx,0xc(%ebp)
 804983a:	8b 55 08             	mov    0x8(%ebp),%edx
 804983d:	0f b6 12             	movzbl (%edx),%edx
 8049840:	88 10                	mov    %dl,(%eax)
 8049842:	e9 8a 00 00 00       	jmp    80498d1 <urlencode+0x120>
 8049847:	8b 45 08             	mov    0x8(%ebp),%eax
 804984a:	0f b6 00             	movzbl (%eax),%eax
 804984d:	3c 20                	cmp    $0x20,%al
 804984f:	75 0e                	jne    804985f <urlencode+0xae>
 8049851:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049854:	8d 50 01             	lea    0x1(%eax),%edx
 8049857:	89 55 0c             	mov    %edx,0xc(%ebp)
 804985a:	c6 00 2b             	movb   $0x2b,(%eax)
 804985d:	eb 72                	jmp    80498d1 <urlencode+0x120>
 804985f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049862:	0f b6 00             	movzbl (%eax),%eax
 8049865:	3c 1f                	cmp    $0x1f,%al
 8049867:	76 0a                	jbe    8049873 <urlencode+0xc2>
 8049869:	8b 45 08             	mov    0x8(%ebp),%eax
 804986c:	0f b6 00             	movzbl (%eax),%eax
 804986f:	84 c0                	test   %al,%al
 8049871:	79 0a                	jns    804987d <urlencode+0xcc>
 8049873:	8b 45 08             	mov    0x8(%ebp),%eax
 8049876:	0f b6 00             	movzbl (%eax),%eax
 8049879:	3c 09                	cmp    $0x9,%al
 804987b:	75 4d                	jne    80498ca <urlencode+0x119>
 804987d:	8b 45 08             	mov    0x8(%ebp),%eax
 8049880:	0f b6 00             	movzbl (%eax),%eax
 8049883:	0f b6 c0             	movzbl %al,%eax
 8049886:	83 ec 04             	sub    $0x4,%esp
 8049889:	50                   	push   %eax
 804988a:	68 08 a8 04 08       	push   $0x804a808
 804988f:	8d 45 ec             	lea    -0x14(%ebp),%eax
 8049892:	50                   	push   %eax
 8049893:	e8 58 f1 ff ff       	call   80489f0 <sprintf@plt>
 8049898:	83 c4 10             	add    $0x10,%esp
 804989b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804989e:	8d 50 01             	lea    0x1(%eax),%edx
 80498a1:	89 55 0c             	mov    %edx,0xc(%ebp)
 80498a4:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
 80498a8:	88 10                	mov    %dl,(%eax)
 80498aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 80498ad:	8d 50 01             	lea    0x1(%eax),%edx
 80498b0:	89 55 0c             	mov    %edx,0xc(%ebp)
 80498b3:	0f b6 55 ed          	movzbl -0x13(%ebp),%edx
 80498b7:	88 10                	mov    %dl,(%eax)
 80498b9:	8b 45 0c             	mov    0xc(%ebp),%eax
 80498bc:	8d 50 01             	lea    0x1(%eax),%edx
 80498bf:	89 55 0c             	mov    %edx,0xc(%ebp)
 80498c2:	0f b6 55 ee          	movzbl -0x12(%ebp),%edx
 80498c6:	88 10                	mov    %dl,(%eax)
 80498c8:	eb 07                	jmp    80498d1 <urlencode+0x120>
 80498ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80498cf:	eb 1a                	jmp    80498eb <urlencode+0x13a>
 80498d1:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 80498d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80498d8:	8d 50 ff             	lea    -0x1(%eax),%edx
 80498db:	89 55 f4             	mov    %edx,-0xc(%ebp)
 80498de:	85 c0                	test   %eax,%eax
 80498e0:	0f 85 e7 fe ff ff    	jne    80497cd <urlencode+0x1c>
 80498e6:	b8 00 00 00 00       	mov    $0x0,%eax
 80498eb:	c9                   	leave  
 80498ec:	c3                   	ret    

080498ed <submitr>:
 80498ed:	55                   	push   %ebp
 80498ee:	89 e5                	mov    %esp,%ebp
 80498f0:	57                   	push   %edi
 80498f1:	56                   	push   %esi
 80498f2:	53                   	push   %ebx
 80498f3:	81 ec 3c a0 00 00    	sub    $0xa03c,%esp
 80498f9:	c7 85 b8 7f ff ff 00 	movl   $0x0,-0x8048(%ebp)
 8049900:	00 00 00 
 8049903:	83 ec 04             	sub    $0x4,%esp
 8049906:	6a 00                	push   $0x0
 8049908:	6a 01                	push   $0x1
 804990a:	6a 02                	push   $0x2
 804990c:	e8 ef f0 ff ff       	call   8048a00 <socket@plt>
 8049911:	83 c4 10             	add    $0x10,%esp
 8049914:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049917:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804991b:	79 51                	jns    804996e <submitr+0x81>
 804991d:	8b 45 20             	mov    0x20(%ebp),%eax
 8049920:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049926:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804992d:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049934:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804993b:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049942:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049949:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 8049950:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 8049957:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 804995e:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 8049964:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049969:	e9 a3 05 00 00       	jmp    8049f11 <submitr+0x624>
 804996e:	83 ec 0c             	sub    $0xc,%esp
 8049971:	ff 75 08             	pushl  0x8(%ebp)
 8049974:	e8 a7 f0 ff ff       	call   8048a20 <gethostbyname@plt>
 8049979:	83 c4 10             	add    $0x10,%esp
 804997c:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804997f:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 8049983:	75 2e                	jne    80499b3 <submitr+0xc6>
 8049985:	83 ec 04             	sub    $0x4,%esp
 8049988:	ff 75 08             	pushl  0x8(%ebp)
 804998b:	68 10 a8 04 08       	push   $0x804a810
 8049990:	ff 75 20             	pushl  0x20(%ebp)
 8049993:	e8 58 f0 ff ff       	call   80489f0 <sprintf@plt>
 8049998:	83 c4 10             	add    $0x10,%esp
 804999b:	83 ec 0c             	sub    $0xc,%esp
 804999e:	ff 75 e4             	pushl  -0x1c(%ebp)
 80499a1:	e8 9a f0 ff ff       	call   8048a40 <close@plt>
 80499a6:	83 c4 10             	add    $0x10,%esp
 80499a9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80499ae:	e9 5e 05 00 00       	jmp    8049f11 <submitr+0x624>
 80499b3:	83 ec 08             	sub    $0x8,%esp
 80499b6:	6a 10                	push   $0x10
 80499b8:	8d 45 c8             	lea    -0x38(%ebp),%eax
 80499bb:	50                   	push   %eax
 80499bc:	e8 9f ee ff ff       	call   8048860 <bzero@plt>
 80499c1:	83 c4 10             	add    $0x10,%esp
 80499c4:	66 c7 45 c8 02 00    	movw   $0x2,-0x38(%ebp)
 80499ca:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80499cd:	8b 40 0c             	mov    0xc(%eax),%eax
 80499d0:	89 c2                	mov    %eax,%edx
 80499d2:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80499d5:	8b 40 10             	mov    0x10(%eax),%eax
 80499d8:	8b 00                	mov    (%eax),%eax
 80499da:	83 ec 04             	sub    $0x4,%esp
 80499dd:	52                   	push   %edx
 80499de:	8d 55 c8             	lea    -0x38(%ebp),%edx
 80499e1:	83 c2 04             	add    $0x4,%edx
 80499e4:	52                   	push   %edx
 80499e5:	50                   	push   %eax
 80499e6:	e8 d5 ee ff ff       	call   80488c0 <bcopy@plt>
 80499eb:	83 c4 10             	add    $0x10,%esp
 80499ee:	8b 45 0c             	mov    0xc(%ebp),%eax
 80499f1:	0f b7 c0             	movzwl %ax,%eax
 80499f4:	83 ec 0c             	sub    $0xc,%esp
 80499f7:	50                   	push   %eax
 80499f8:	e8 a3 ee ff ff       	call   80488a0 <htons@plt>
 80499fd:	83 c4 10             	add    $0x10,%esp
 8049a00:	66 89 45 ca          	mov    %ax,-0x36(%ebp)
 8049a04:	83 ec 04             	sub    $0x4,%esp
 8049a07:	6a 10                	push   $0x10
 8049a09:	8d 45 c8             	lea    -0x38(%ebp),%eax
 8049a0c:	50                   	push   %eax
 8049a0d:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049a10:	e8 1b f0 ff ff       	call   8048a30 <connect@plt>
 8049a15:	83 c4 10             	add    $0x10,%esp
 8049a18:	85 c0                	test   %eax,%eax
 8049a1a:	79 2e                	jns    8049a4a <submitr+0x15d>
 8049a1c:	83 ec 04             	sub    $0x4,%esp
 8049a1f:	ff 75 08             	pushl  0x8(%ebp)
 8049a22:	68 3c a8 04 08       	push   $0x804a83c
 8049a27:	ff 75 20             	pushl  0x20(%ebp)
 8049a2a:	e8 c1 ef ff ff       	call   80489f0 <sprintf@plt>
 8049a2f:	83 c4 10             	add    $0x10,%esp
 8049a32:	83 ec 0c             	sub    $0xc,%esp
 8049a35:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049a38:	e8 03 f0 ff ff       	call   8048a40 <close@plt>
 8049a3d:	83 c4 10             	add    $0x10,%esp
 8049a40:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a45:	e9 c7 04 00 00       	jmp    8049f11 <submitr+0x624>
 8049a4a:	83 ec 0c             	sub    $0xc,%esp
 8049a4d:	ff 75 1c             	pushl  0x1c(%ebp)
 8049a50:	e8 fb ee ff ff       	call   8048950 <strlen@plt>
 8049a55:	83 c4 10             	add    $0x10,%esp
 8049a58:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8049a5b:	83 ec 0c             	sub    $0xc,%esp
 8049a5e:	ff 75 10             	pushl  0x10(%ebp)
 8049a61:	e8 ea ee ff ff       	call   8048950 <strlen@plt>
 8049a66:	83 c4 10             	add    $0x10,%esp
 8049a69:	89 c3                	mov    %eax,%ebx
 8049a6b:	83 ec 0c             	sub    $0xc,%esp
 8049a6e:	ff 75 14             	pushl  0x14(%ebp)
 8049a71:	e8 da ee ff ff       	call   8048950 <strlen@plt>
 8049a76:	83 c4 10             	add    $0x10,%esp
 8049a79:	01 c3                	add    %eax,%ebx
 8049a7b:	83 ec 0c             	sub    $0xc,%esp
 8049a7e:	ff 75 18             	pushl  0x18(%ebp)
 8049a81:	e8 ca ee ff ff       	call   8048950 <strlen@plt>
 8049a86:	83 c4 10             	add    $0x10,%esp
 8049a89:	8d 0c 03             	lea    (%ebx,%eax,1),%ecx
 8049a8c:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8049a8f:	89 d0                	mov    %edx,%eax
 8049a91:	01 c0                	add    %eax,%eax
 8049a93:	01 d0                	add    %edx,%eax
 8049a95:	01 c8                	add    %ecx,%eax
 8049a97:	83 e8 80             	sub    $0xffffff80,%eax
 8049a9a:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8049a9d:	81 7d d8 00 20 00 00 	cmpl   $0x2000,-0x28(%ebp)
 8049aa4:	76 7c                	jbe    8049b22 <submitr+0x235>
 8049aa6:	8b 45 20             	mov    0x20(%ebp),%eax
 8049aa9:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049aaf:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 8049ab6:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 8049abd:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 8049ac4:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 8049acb:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 8049ad2:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 8049ad9:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 8049ae0:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 8049ae7:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 8049aee:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 8049af5:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 8049afc:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 8049b03:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 8049b0a:	83 ec 0c             	sub    $0xc,%esp
 8049b0d:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049b10:	e8 2b ef ff ff       	call   8048a40 <close@plt>
 8049b15:	83 c4 10             	add    $0x10,%esp
 8049b18:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049b1d:	e9 ef 03 00 00       	jmp    8049f11 <submitr+0x624>
 8049b22:	83 ec 08             	sub    $0x8,%esp
 8049b25:	68 00 20 00 00       	push   $0x2000
 8049b2a:	8d 85 bc 9f ff ff    	lea    -0x6044(%ebp),%eax
 8049b30:	50                   	push   %eax
 8049b31:	e8 2a ed ff ff       	call   8048860 <bzero@plt>
 8049b36:	83 c4 10             	add    $0x10,%esp
 8049b39:	83 ec 08             	sub    $0x8,%esp
 8049b3c:	8d 85 bc 9f ff ff    	lea    -0x6044(%ebp),%eax
 8049b42:	50                   	push   %eax
 8049b43:	ff 75 1c             	pushl  0x1c(%ebp)
 8049b46:	e8 66 fc ff ff       	call   80497b1 <urlencode>
 8049b4b:	83 c4 10             	add    $0x10,%esp
 8049b4e:	85 c0                	test   %eax,%eax
 8049b50:	79 4b                	jns    8049b9d <submitr+0x2b0>
 8049b52:	8b 45 20             	mov    0x20(%ebp),%eax
 8049b55:	bb 64 a8 04 08       	mov    $0x804a864,%ebx
 8049b5a:	ba 43 00 00 00       	mov    $0x43,%edx
 8049b5f:	8b 0b                	mov    (%ebx),%ecx
 8049b61:	89 08                	mov    %ecx,(%eax)
 8049b63:	8b 4c 13 fc          	mov    -0x4(%ebx,%edx,1),%ecx
 8049b67:	89 4c 10 fc          	mov    %ecx,-0x4(%eax,%edx,1)
 8049b6b:	8d 78 04             	lea    0x4(%eax),%edi
 8049b6e:	83 e7 fc             	and    $0xfffffffc,%edi
 8049b71:	29 f8                	sub    %edi,%eax
 8049b73:	29 c3                	sub    %eax,%ebx
 8049b75:	01 c2                	add    %eax,%edx
 8049b77:	83 e2 fc             	and    $0xfffffffc,%edx
 8049b7a:	89 d0                	mov    %edx,%eax
 8049b7c:	c1 e8 02             	shr    $0x2,%eax
 8049b7f:	89 de                	mov    %ebx,%esi
 8049b81:	89 c1                	mov    %eax,%ecx
 8049b83:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049b85:	83 ec 0c             	sub    $0xc,%esp
 8049b88:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049b8b:	e8 b0 ee ff ff       	call   8048a40 <close@plt>
 8049b90:	83 c4 10             	add    $0x10,%esp
 8049b93:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049b98:	e9 74 03 00 00       	jmp    8049f11 <submitr+0x624>
 8049b9d:	83 ec 08             	sub    $0x8,%esp
 8049ba0:	8d 85 bc 9f ff ff    	lea    -0x6044(%ebp),%eax
 8049ba6:	50                   	push   %eax
 8049ba7:	ff 75 18             	pushl  0x18(%ebp)
 8049baa:	ff 75 14             	pushl  0x14(%ebp)
 8049bad:	ff 75 10             	pushl  0x10(%ebp)
 8049bb0:	68 a8 a8 04 08       	push   $0x804a8a8
 8049bb5:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 8049bbb:	50                   	push   %eax
 8049bbc:	e8 2f ee ff ff       	call   80489f0 <sprintf@plt>
 8049bc1:	83 c4 20             	add    $0x20,%esp
 8049bc4:	83 ec 0c             	sub    $0xc,%esp
 8049bc7:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 8049bcd:	50                   	push   %eax
 8049bce:	e8 7d ed ff ff       	call   8048950 <strlen@plt>
 8049bd3:	83 c4 10             	add    $0x10,%esp
 8049bd6:	83 ec 04             	sub    $0x4,%esp
 8049bd9:	50                   	push   %eax
 8049bda:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 8049be0:	50                   	push   %eax
 8049be1:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049be4:	e8 64 fb ff ff       	call   804974d <rio_writen>
 8049be9:	83 c4 10             	add    $0x10,%esp
 8049bec:	85 c0                	test   %eax,%eax
 8049bee:	79 67                	jns    8049c57 <submitr+0x36a>
 8049bf0:	8b 45 20             	mov    0x20(%ebp),%eax
 8049bf3:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049bf9:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049c00:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049c07:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049c0e:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049c15:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049c1c:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 8049c23:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 8049c2a:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 8049c31:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 8049c38:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 8049c3f:	83 ec 0c             	sub    $0xc,%esp
 8049c42:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049c45:	e8 f6 ed ff ff       	call   8048a40 <close@plt>
 8049c4a:	83 c4 10             	add    $0x10,%esp
 8049c4d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c52:	e9 ba 02 00 00       	jmp    8049f11 <submitr+0x624>
 8049c57:	83 ec 08             	sub    $0x8,%esp
 8049c5a:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049c5d:	8d 85 bc df ff ff    	lea    -0x2044(%ebp),%eax
 8049c63:	50                   	push   %eax
 8049c64:	e8 78 f9 ff ff       	call   80495e1 <rio_readinitb>
 8049c69:	83 c4 10             	add    $0x10,%esp
 8049c6c:	83 ec 04             	sub    $0x4,%esp
 8049c6f:	68 00 20 00 00       	push   $0x2000
 8049c74:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 8049c7a:	50                   	push   %eax
 8049c7b:	8d 85 bc df ff ff    	lea    -0x2044(%ebp),%eax
 8049c81:	50                   	push   %eax
 8049c82:	e8 48 fa ff ff       	call   80496cf <rio_readlineb>
 8049c87:	83 c4 10             	add    $0x10,%esp
 8049c8a:	85 c0                	test   %eax,%eax
 8049c8c:	7f 7b                	jg     8049d09 <submitr+0x41c>
 8049c8e:	8b 45 20             	mov    0x20(%ebp),%eax
 8049c91:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049c97:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049c9e:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049ca5:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049cac:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049cb3:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049cba:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049cc1:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 8049cc8:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 8049ccf:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 8049cd6:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 8049cdd:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 8049ce4:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 8049ceb:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 8049cf1:	83 ec 0c             	sub    $0xc,%esp
 8049cf4:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049cf7:	e8 44 ed ff ff       	call   8048a40 <close@plt>
 8049cfc:	83 c4 10             	add    $0x10,%esp
 8049cff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049d04:	e9 08 02 00 00       	jmp    8049f11 <submitr+0x624>
 8049d09:	83 ec 0c             	sub    $0xc,%esp
 8049d0c:	8d 85 b8 5f ff ff    	lea    -0xa048(%ebp),%eax
 8049d12:	50                   	push   %eax
 8049d13:	8d 85 b8 7f ff ff    	lea    -0x8048(%ebp),%eax
 8049d19:	50                   	push   %eax
 8049d1a:	8d 85 bc 7f ff ff    	lea    -0x8044(%ebp),%eax
 8049d20:	50                   	push   %eax
 8049d21:	68 f2 a8 04 08       	push   $0x804a8f2
 8049d26:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 8049d2c:	50                   	push   %eax
 8049d2d:	e8 6e ec ff ff       	call   80489a0 <__isoc99_sscanf@plt>
 8049d32:	83 c4 20             	add    $0x20,%esp
 8049d35:	8b 85 b8 7f ff ff    	mov    -0x8048(%ebp),%eax
 8049d3b:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049d40:	74 36                	je     8049d78 <submitr+0x48b>
 8049d42:	8b 85 b8 7f ff ff    	mov    -0x8048(%ebp),%eax
 8049d48:	8d 95 b8 5f ff ff    	lea    -0xa048(%ebp),%edx
 8049d4e:	52                   	push   %edx
 8049d4f:	50                   	push   %eax
 8049d50:	68 04 a9 04 08       	push   $0x804a904
 8049d55:	ff 75 20             	pushl  0x20(%ebp)
 8049d58:	e8 93 ec ff ff       	call   80489f0 <sprintf@plt>
 8049d5d:	83 c4 10             	add    $0x10,%esp
 8049d60:	83 ec 0c             	sub    $0xc,%esp
 8049d63:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049d66:	e8 d5 ec ff ff       	call   8048a40 <close@plt>
 8049d6b:	83 c4 10             	add    $0x10,%esp
 8049d6e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049d73:	e9 99 01 00 00       	jmp    8049f11 <submitr+0x624>
 8049d78:	e9 94 00 00 00       	jmp    8049e11 <submitr+0x524>
 8049d7d:	83 ec 04             	sub    $0x4,%esp
 8049d80:	68 00 20 00 00       	push   $0x2000
 8049d85:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 8049d8b:	50                   	push   %eax
 8049d8c:	8d 85 bc df ff ff    	lea    -0x2044(%ebp),%eax
 8049d92:	50                   	push   %eax
 8049d93:	e8 37 f9 ff ff       	call   80496cf <rio_readlineb>
 8049d98:	83 c4 10             	add    $0x10,%esp
 8049d9b:	85 c0                	test   %eax,%eax
 8049d9d:	7f 72                	jg     8049e11 <submitr+0x524>
 8049d9f:	8b 45 20             	mov    0x20(%ebp),%eax
 8049da2:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049da8:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049daf:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049db6:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049dbd:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049dc4:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049dcb:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049dd2:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 8049dd9:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 8049de0:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 8049de7:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 8049dee:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 8049df5:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 8049df9:	83 ec 0c             	sub    $0xc,%esp
 8049dfc:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049dff:	e8 3c ec ff ff       	call   8048a40 <close@plt>
 8049e04:	83 c4 10             	add    $0x10,%esp
 8049e07:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049e0c:	e9 00 01 00 00       	jmp    8049f11 <submitr+0x624>
 8049e11:	83 ec 08             	sub    $0x8,%esp
 8049e14:	68 31 a9 04 08       	push   $0x804a931
 8049e19:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 8049e1f:	50                   	push   %eax
 8049e20:	e8 db e9 ff ff       	call   8048800 <strcmp@plt>
 8049e25:	83 c4 10             	add    $0x10,%esp
 8049e28:	85 c0                	test   %eax,%eax
 8049e2a:	0f 85 4d ff ff ff    	jne    8049d7d <submitr+0x490>
 8049e30:	83 ec 04             	sub    $0x4,%esp
 8049e33:	68 00 20 00 00       	push   $0x2000
 8049e38:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 8049e3e:	50                   	push   %eax
 8049e3f:	8d 85 bc df ff ff    	lea    -0x2044(%ebp),%eax
 8049e45:	50                   	push   %eax
 8049e46:	e8 84 f8 ff ff       	call   80496cf <rio_readlineb>
 8049e4b:	83 c4 10             	add    $0x10,%esp
 8049e4e:	85 c0                	test   %eax,%eax
 8049e50:	7f 79                	jg     8049ecb <submitr+0x5de>
 8049e52:	8b 45 20             	mov    0x20(%ebp),%eax
 8049e55:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049e5b:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049e62:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049e69:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049e70:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049e77:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049e7e:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049e85:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 8049e8c:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 8049e93:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 8049e9a:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 8049ea1:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 8049ea8:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 8049eaf:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 8049eb6:	83 ec 0c             	sub    $0xc,%esp
 8049eb9:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049ebc:	e8 7f eb ff ff       	call   8048a40 <close@plt>
 8049ec1:	83 c4 10             	add    $0x10,%esp
 8049ec4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049ec9:	eb 46                	jmp    8049f11 <submitr+0x624>
 8049ecb:	83 ec 08             	sub    $0x8,%esp
 8049ece:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 8049ed4:	50                   	push   %eax
 8049ed5:	ff 75 20             	pushl  0x20(%ebp)
 8049ed8:	e8 f3 e9 ff ff       	call   80488d0 <strcpy@plt>
 8049edd:	83 c4 10             	add    $0x10,%esp
 8049ee0:	83 ec 0c             	sub    $0xc,%esp
 8049ee3:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049ee6:	e8 55 eb ff ff       	call   8048a40 <close@plt>
 8049eeb:	83 c4 10             	add    $0x10,%esp
 8049eee:	83 ec 08             	sub    $0x8,%esp
 8049ef1:	68 34 a9 04 08       	push   $0x804a934
 8049ef6:	ff 75 20             	pushl  0x20(%ebp)
 8049ef9:	e8 02 e9 ff ff       	call   8048800 <strcmp@plt>
 8049efe:	83 c4 10             	add    $0x10,%esp
 8049f01:	85 c0                	test   %eax,%eax
 8049f03:	75 07                	jne    8049f0c <submitr+0x61f>
 8049f05:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f0a:	eb 05                	jmp    8049f11 <submitr+0x624>
 8049f0c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049f11:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8049f14:	5b                   	pop    %ebx
 8049f15:	5e                   	pop    %esi
 8049f16:	5f                   	pop    %edi
 8049f17:	5d                   	pop    %ebp
 8049f18:	c3                   	ret    

08049f19 <init_timeout>:
 8049f19:	55                   	push   %ebp
 8049f1a:	89 e5                	mov    %esp,%ebp
 8049f1c:	83 ec 08             	sub    $0x8,%esp
 8049f1f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049f23:	75 02                	jne    8049f27 <init_timeout+0xe>
 8049f25:	eb 2e                	jmp    8049f55 <init_timeout+0x3c>
 8049f27:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049f2b:	79 07                	jns    8049f34 <init_timeout+0x1b>
 8049f2d:	c7 45 08 05 00 00 00 	movl   $0x5,0x8(%ebp)
 8049f34:	83 ec 08             	sub    $0x8,%esp
 8049f37:	68 bf 95 04 08       	push   $0x80495bf
 8049f3c:	6a 0e                	push   $0xe
 8049f3e:	e8 2d e9 ff ff       	call   8048870 <signal@plt>
 8049f43:	83 c4 10             	add    $0x10,%esp
 8049f46:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f49:	83 ec 0c             	sub    $0xc,%esp
 8049f4c:	50                   	push   %eax
 8049f4d:	e8 2e e9 ff ff       	call   8048880 <alarm@plt>
 8049f52:	83 c4 10             	add    $0x10,%esp
 8049f55:	c9                   	leave  
 8049f56:	c3                   	ret    

08049f57 <init_driver>:
 8049f57:	55                   	push   %ebp
 8049f58:	89 e5                	mov    %esp,%ebp
 8049f5a:	83 ec 28             	sub    $0x28,%esp
 8049f5d:	c7 45 f4 37 a9 04 08 	movl   $0x804a937,-0xc(%ebp)
 8049f64:	c7 45 f0 10 4b 00 00 	movl   $0x4b10,-0x10(%ebp)
 8049f6b:	83 ec 08             	sub    $0x8,%esp
 8049f6e:	6a 01                	push   $0x1
 8049f70:	6a 0d                	push   $0xd
 8049f72:	e8 f9 e8 ff ff       	call   8048870 <signal@plt>
 8049f77:	83 c4 10             	add    $0x10,%esp
 8049f7a:	83 ec 08             	sub    $0x8,%esp
 8049f7d:	6a 01                	push   $0x1
 8049f7f:	6a 1d                	push   $0x1d
 8049f81:	e8 ea e8 ff ff       	call   8048870 <signal@plt>
 8049f86:	83 c4 10             	add    $0x10,%esp
 8049f89:	83 ec 08             	sub    $0x8,%esp
 8049f8c:	6a 01                	push   $0x1
 8049f8e:	6a 1d                	push   $0x1d
 8049f90:	e8 db e8 ff ff       	call   8048870 <signal@plt>
 8049f95:	83 c4 10             	add    $0x10,%esp
 8049f98:	83 ec 04             	sub    $0x4,%esp
 8049f9b:	6a 00                	push   $0x0
 8049f9d:	6a 01                	push   $0x1
 8049f9f:	6a 02                	push   $0x2
 8049fa1:	e8 5a ea ff ff       	call   8048a00 <socket@plt>
 8049fa6:	83 c4 10             	add    $0x10,%esp
 8049fa9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049fac:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 8049fb0:	79 51                	jns    804a003 <init_driver+0xac>
 8049fb2:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fb5:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049fbb:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049fc2:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049fc9:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049fd0:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049fd7:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049fde:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 8049fe5:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 8049fec:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 8049ff3:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 8049ff9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049ffe:	e9 f8 00 00 00       	jmp    804a0fb <init_driver+0x1a4>
 804a003:	83 ec 0c             	sub    $0xc,%esp
 804a006:	ff 75 f4             	pushl  -0xc(%ebp)
 804a009:	e8 12 ea ff ff       	call   8048a20 <gethostbyname@plt>
 804a00e:	83 c4 10             	add    $0x10,%esp
 804a011:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804a014:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804a018:	75 2e                	jne    804a048 <init_driver+0xf1>
 804a01a:	83 ec 04             	sub    $0x4,%esp
 804a01d:	ff 75 f4             	pushl  -0xc(%ebp)
 804a020:	68 10 a8 04 08       	push   $0x804a810
 804a025:	ff 75 08             	pushl  0x8(%ebp)
 804a028:	e8 c3 e9 ff ff       	call   80489f0 <sprintf@plt>
 804a02d:	83 c4 10             	add    $0x10,%esp
 804a030:	83 ec 0c             	sub    $0xc,%esp
 804a033:	ff 75 ec             	pushl  -0x14(%ebp)
 804a036:	e8 05 ea ff ff       	call   8048a40 <close@plt>
 804a03b:	83 c4 10             	add    $0x10,%esp
 804a03e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a043:	e9 b3 00 00 00       	jmp    804a0fb <init_driver+0x1a4>
 804a048:	83 ec 08             	sub    $0x8,%esp
 804a04b:	6a 10                	push   $0x10
 804a04d:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804a050:	50                   	push   %eax
 804a051:	e8 0a e8 ff ff       	call   8048860 <bzero@plt>
 804a056:	83 c4 10             	add    $0x10,%esp
 804a059:	66 c7 45 d8 02 00    	movw   $0x2,-0x28(%ebp)
 804a05f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a062:	8b 40 0c             	mov    0xc(%eax),%eax
 804a065:	89 c2                	mov    %eax,%edx
 804a067:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a06a:	8b 40 10             	mov    0x10(%eax),%eax
 804a06d:	8b 00                	mov    (%eax),%eax
 804a06f:	83 ec 04             	sub    $0x4,%esp
 804a072:	52                   	push   %edx
 804a073:	8d 55 d8             	lea    -0x28(%ebp),%edx
 804a076:	83 c2 04             	add    $0x4,%edx
 804a079:	52                   	push   %edx
 804a07a:	50                   	push   %eax
 804a07b:	e8 40 e8 ff ff       	call   80488c0 <bcopy@plt>
 804a080:	83 c4 10             	add    $0x10,%esp
 804a083:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a086:	0f b7 c0             	movzwl %ax,%eax
 804a089:	83 ec 0c             	sub    $0xc,%esp
 804a08c:	50                   	push   %eax
 804a08d:	e8 0e e8 ff ff       	call   80488a0 <htons@plt>
 804a092:	83 c4 10             	add    $0x10,%esp
 804a095:	66 89 45 da          	mov    %ax,-0x26(%ebp)
 804a099:	83 ec 04             	sub    $0x4,%esp
 804a09c:	6a 10                	push   $0x10
 804a09e:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804a0a1:	50                   	push   %eax
 804a0a2:	ff 75 ec             	pushl  -0x14(%ebp)
 804a0a5:	e8 86 e9 ff ff       	call   8048a30 <connect@plt>
 804a0aa:	83 c4 10             	add    $0x10,%esp
 804a0ad:	85 c0                	test   %eax,%eax
 804a0af:	79 2b                	jns    804a0dc <init_driver+0x185>
 804a0b1:	ff 75 f0             	pushl  -0x10(%ebp)
 804a0b4:	ff 75 f4             	pushl  -0xc(%ebp)
 804a0b7:	68 4c a9 04 08       	push   $0x804a94c
 804a0bc:	ff 75 08             	pushl  0x8(%ebp)
 804a0bf:	e8 2c e9 ff ff       	call   80489f0 <sprintf@plt>
 804a0c4:	83 c4 10             	add    $0x10,%esp
 804a0c7:	83 ec 0c             	sub    $0xc,%esp
 804a0ca:	ff 75 ec             	pushl  -0x14(%ebp)
 804a0cd:	e8 6e e9 ff ff       	call   8048a40 <close@plt>
 804a0d2:	83 c4 10             	add    $0x10,%esp
 804a0d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a0da:	eb 1f                	jmp    804a0fb <init_driver+0x1a4>
 804a0dc:	83 ec 0c             	sub    $0xc,%esp
 804a0df:	ff 75 ec             	pushl  -0x14(%ebp)
 804a0e2:	e8 59 e9 ff ff       	call   8048a40 <close@plt>
 804a0e7:	83 c4 10             	add    $0x10,%esp
 804a0ea:	8b 45 08             	mov    0x8(%ebp),%eax
 804a0ed:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804a0f2:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804a0f6:	b8 00 00 00 00       	mov    $0x0,%eax
 804a0fb:	c9                   	leave  
 804a0fc:	c3                   	ret    

0804a0fd <driver_post>:
 804a0fd:	55                   	push   %ebp
 804a0fe:	89 e5                	mov    %esp,%ebp
 804a100:	83 ec 18             	sub    $0x18,%esp
 804a103:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804a107:	74 26                	je     804a12f <driver_post+0x32>
 804a109:	83 ec 08             	sub    $0x8,%esp
 804a10c:	ff 75 0c             	pushl  0xc(%ebp)
 804a10f:	68 75 a9 04 08       	push   $0x804a975
 804a114:	e8 17 e7 ff ff       	call   8048830 <printf@plt>
 804a119:	83 c4 10             	add    $0x10,%esp
 804a11c:	8b 45 14             	mov    0x14(%ebp),%eax
 804a11f:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804a124:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804a128:	b8 00 00 00 00       	mov    $0x0,%eax
 804a12d:	eb 51                	jmp    804a180 <driver_post+0x83>
 804a12f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a133:	74 3a                	je     804a16f <driver_post+0x72>
 804a135:	8b 45 08             	mov    0x8(%ebp),%eax
 804a138:	0f b6 00             	movzbl (%eax),%eax
 804a13b:	84 c0                	test   %al,%al
 804a13d:	74 30                	je     804a16f <driver_post+0x72>
 804a13f:	83 ec 04             	sub    $0x4,%esp
 804a142:	ff 75 14             	pushl  0x14(%ebp)
 804a145:	ff 75 0c             	pushl  0xc(%ebp)
 804a148:	68 8c a9 04 08       	push   $0x804a98c
 804a14d:	ff 75 08             	pushl  0x8(%ebp)
 804a150:	68 93 a9 04 08       	push   $0x804a993
 804a155:	68 10 4b 00 00       	push   $0x4b10
 804a15a:	68 37 a9 04 08       	push   $0x804a937
 804a15f:	e8 89 f7 ff ff       	call   80498ed <submitr>
 804a164:	83 c4 20             	add    $0x20,%esp
 804a167:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a16a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a16d:	eb 11                	jmp    804a180 <driver_post+0x83>
 804a16f:	8b 45 14             	mov    0x14(%ebp),%eax
 804a172:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804a177:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804a17b:	b8 00 00 00 00       	mov    $0x0,%eax
 804a180:	c9                   	leave  
 804a181:	c3                   	ret    

0804a182 <hash>:
 804a182:	55                   	push   %ebp
 804a183:	89 e5                	mov    %esp,%ebp
 804a185:	83 ec 10             	sub    $0x10,%esp
 804a188:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804a18f:	eb 1a                	jmp    804a1ab <hash+0x29>
 804a191:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804a194:	6b c8 67             	imul   $0x67,%eax,%ecx
 804a197:	8b 45 08             	mov    0x8(%ebp),%eax
 804a19a:	8d 50 01             	lea    0x1(%eax),%edx
 804a19d:	89 55 08             	mov    %edx,0x8(%ebp)
 804a1a0:	0f b6 00             	movzbl (%eax),%eax
 804a1a3:	0f be c0             	movsbl %al,%eax
 804a1a6:	01 c8                	add    %ecx,%eax
 804a1a8:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804a1ab:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1ae:	0f b6 00             	movzbl (%eax),%eax
 804a1b1:	84 c0                	test   %al,%al
 804a1b3:	75 dc                	jne    804a191 <hash+0xf>
 804a1b5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804a1b8:	c9                   	leave  
 804a1b9:	c3                   	ret    

0804a1ba <check>:
 804a1ba:	55                   	push   %ebp
 804a1bb:	89 e5                	mov    %esp,%ebp
 804a1bd:	83 ec 10             	sub    $0x10,%esp
 804a1c0:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1c3:	c1 e8 1c             	shr    $0x1c,%eax
 804a1c6:	85 c0                	test   %eax,%eax
 804a1c8:	75 07                	jne    804a1d1 <check+0x17>
 804a1ca:	b8 00 00 00 00       	mov    $0x0,%eax
 804a1cf:	eb 33                	jmp    804a204 <check+0x4a>
 804a1d1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804a1d8:	eb 1f                	jmp    804a1f9 <check+0x3f>
 804a1da:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804a1dd:	8b 55 08             	mov    0x8(%ebp),%edx
 804a1e0:	89 c1                	mov    %eax,%ecx
 804a1e2:	d3 ea                	shr    %cl,%edx
 804a1e4:	89 d0                	mov    %edx,%eax
 804a1e6:	0f b6 c0             	movzbl %al,%eax
 804a1e9:	83 f8 0a             	cmp    $0xa,%eax
 804a1ec:	75 07                	jne    804a1f5 <check+0x3b>
 804a1ee:	b8 00 00 00 00       	mov    $0x0,%eax
 804a1f3:	eb 0f                	jmp    804a204 <check+0x4a>
 804a1f5:	83 45 fc 08          	addl   $0x8,-0x4(%ebp)
 804a1f9:	83 7d fc 1f          	cmpl   $0x1f,-0x4(%ebp)
 804a1fd:	7e db                	jle    804a1da <check+0x20>
 804a1ff:	b8 01 00 00 00       	mov    $0x1,%eax
 804a204:	c9                   	leave  
 804a205:	c3                   	ret    

0804a206 <gencookie>:
 804a206:	55                   	push   %ebp
 804a207:	89 e5                	mov    %esp,%ebp
 804a209:	83 ec 18             	sub    $0x18,%esp
 804a20c:	ff 75 08             	pushl  0x8(%ebp)
 804a20f:	e8 6e ff ff ff       	call   804a182 <hash>
 804a214:	83 c4 04             	add    $0x4,%esp
 804a217:	83 ec 0c             	sub    $0xc,%esp
 804a21a:	50                   	push   %eax
 804a21b:	e8 10 e7 ff ff       	call   8048930 <srand@plt>
 804a220:	83 c4 10             	add    $0x10,%esp
 804a223:	e8 a8 e7 ff ff       	call   80489d0 <rand@plt>
 804a228:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a22b:	83 ec 0c             	sub    $0xc,%esp
 804a22e:	ff 75 f4             	pushl  -0xc(%ebp)
 804a231:	e8 84 ff ff ff       	call   804a1ba <check>
 804a236:	83 c4 10             	add    $0x10,%esp
 804a239:	85 c0                	test   %eax,%eax
 804a23b:	74 e6                	je     804a223 <gencookie+0x1d>
 804a23d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a240:	c9                   	leave  
 804a241:	c3                   	ret    
 804a242:	66 90                	xchg   %ax,%ax
 804a244:	66 90                	xchg   %ax,%ax
 804a246:	66 90                	xchg   %ax,%ax
 804a248:	66 90                	xchg   %ax,%ax
 804a24a:	66 90                	xchg   %ax,%ax
 804a24c:	66 90                	xchg   %ax,%ax
 804a24e:	66 90                	xchg   %ax,%ax

0804a250 <__libc_csu_init>:
 804a250:	55                   	push   %ebp
 804a251:	57                   	push   %edi
 804a252:	31 ff                	xor    %edi,%edi
 804a254:	56                   	push   %esi
 804a255:	53                   	push   %ebx
 804a256:	e8 35 e8 ff ff       	call   8048a90 <__x86.get_pc_thunk.bx>
 804a25b:	81 c3 9d 0e 00 00    	add    $0xe9d,%ebx
 804a261:	83 ec 1c             	sub    $0x1c,%esp
 804a264:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 804a268:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804a26e:	e8 4d e5 ff ff       	call   80487c0 <_init>
 804a273:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 804a279:	29 c6                	sub    %eax,%esi
 804a27b:	c1 fe 02             	sar    $0x2,%esi
 804a27e:	85 f6                	test   %esi,%esi
 804a280:	74 27                	je     804a2a9 <__libc_csu_init+0x59>
 804a282:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a288:	8b 44 24 38          	mov    0x38(%esp),%eax
 804a28c:	89 2c 24             	mov    %ebp,(%esp)
 804a28f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a293:	8b 44 24 34          	mov    0x34(%esp),%eax
 804a297:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a29b:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804a2a2:	83 c7 01             	add    $0x1,%edi
 804a2a5:	39 f7                	cmp    %esi,%edi
 804a2a7:	75 df                	jne    804a288 <__libc_csu_init+0x38>
 804a2a9:	83 c4 1c             	add    $0x1c,%esp
 804a2ac:	5b                   	pop    %ebx
 804a2ad:	5e                   	pop    %esi
 804a2ae:	5f                   	pop    %edi
 804a2af:	5d                   	pop    %ebp
 804a2b0:	c3                   	ret    
 804a2b1:	eb 0d                	jmp    804a2c0 <__libc_csu_fini>
 804a2b3:	90                   	nop
 804a2b4:	90                   	nop
 804a2b5:	90                   	nop
 804a2b6:	90                   	nop
 804a2b7:	90                   	nop
 804a2b8:	90                   	nop
 804a2b9:	90                   	nop
 804a2ba:	90                   	nop
 804a2bb:	90                   	nop
 804a2bc:	90                   	nop
 804a2bd:	90                   	nop
 804a2be:	90                   	nop
 804a2bf:	90                   	nop

0804a2c0 <__libc_csu_fini>:
 804a2c0:	f3 c3                	repz ret 

Disassembly of section .fini:

0804a2c4 <_fini>:
 804a2c4:	53                   	push   %ebx
 804a2c5:	83 ec 08             	sub    $0x8,%esp
 804a2c8:	e8 c3 e7 ff ff       	call   8048a90 <__x86.get_pc_thunk.bx>
 804a2cd:	81 c3 2b 0e 00 00    	add    $0xe2b,%ebx
 804a2d3:	83 c4 08             	add    $0x8,%esp
 804a2d6:	5b                   	pop    %ebx
 804a2d7:	c3                   	ret    
