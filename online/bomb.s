
./bomb：     文件格式 elf32-i386


Disassembly of section .init:

08048714 <_init>:
 8048714:	53                   	push   %ebx
 8048715:	83 ec 08             	sub    $0x8,%esp
 8048718:	e8 73 02 00 00       	call   8048990 <__x86.get_pc_thunk.bx>
 804871d:	81 c3 db 29 00 00    	add    $0x29db,%ebx
 8048723:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048729:	85 c0                	test   %eax,%eax
 804872b:	74 05                	je     8048732 <_init+0x1e>
 804872d:	e8 2e 01 00 00       	call   8048860 <__gmon_start__@plt>
 8048732:	83 c4 08             	add    $0x8,%esp
 8048735:	5b                   	pop    %ebx
 8048736:	c3                   	ret    

Disassembly of section .plt:

08048740 <cuserid@plt-0x10>:
 8048740:	ff 35 fc b0 04 08    	pushl  0x804b0fc
 8048746:	ff 25 00 b1 04 08    	jmp    *0x804b100
 804874c:	00 00                	add    %al,(%eax)
	...

08048750 <cuserid@plt>:
 8048750:	ff 25 04 b1 04 08    	jmp    *0x804b104
 8048756:	68 00 00 00 00       	push   $0x0
 804875b:	e9 e0 ff ff ff       	jmp    8048740 <_init+0x2c>

08048760 <printf@plt>:
 8048760:	ff 25 08 b1 04 08    	jmp    *0x804b108
 8048766:	68 08 00 00 00       	push   $0x8
 804876b:	e9 d0 ff ff ff       	jmp    8048740 <_init+0x2c>

08048770 <fflush@plt>:
 8048770:	ff 25 0c b1 04 08    	jmp    *0x804b10c
 8048776:	68 10 00 00 00       	push   $0x10
 804877b:	e9 c0 ff ff ff       	jmp    8048740 <_init+0x2c>

08048780 <dup@plt>:
 8048780:	ff 25 10 b1 04 08    	jmp    *0x804b110
 8048786:	68 18 00 00 00       	push   $0x18
 804878b:	e9 b0 ff ff ff       	jmp    8048740 <_init+0x2c>

08048790 <inet_pton@plt>:
 8048790:	ff 25 14 b1 04 08    	jmp    *0x804b114
 8048796:	68 20 00 00 00       	push   $0x20
 804879b:	e9 a0 ff ff ff       	jmp    8048740 <_init+0x2c>

080487a0 <fgets@plt>:
 80487a0:	ff 25 18 b1 04 08    	jmp    *0x804b118
 80487a6:	68 28 00 00 00       	push   $0x28
 80487ab:	e9 90 ff ff ff       	jmp    8048740 <_init+0x2c>

080487b0 <fclose@plt>:
 80487b0:	ff 25 1c b1 04 08    	jmp    *0x804b11c
 80487b6:	68 30 00 00 00       	push   $0x30
 80487bb:	e9 80 ff ff ff       	jmp    8048740 <_init+0x2c>

080487c0 <signal@plt>:
 80487c0:	ff 25 20 b1 04 08    	jmp    *0x804b120
 80487c6:	68 38 00 00 00       	push   $0x38
 80487cb:	e9 70 ff ff ff       	jmp    8048740 <_init+0x2c>

080487d0 <sleep@plt>:
 80487d0:	ff 25 24 b1 04 08    	jmp    *0x804b124
 80487d6:	68 40 00 00 00       	push   $0x40
 80487db:	e9 60 ff ff ff       	jmp    8048740 <_init+0x2c>

080487e0 <rewind@plt>:
 80487e0:	ff 25 28 b1 04 08    	jmp    *0x804b128
 80487e6:	68 48 00 00 00       	push   $0x48
 80487eb:	e9 50 ff ff ff       	jmp    8048740 <_init+0x2c>

080487f0 <fwrite@plt>:
 80487f0:	ff 25 2c b1 04 08    	jmp    *0x804b12c
 80487f6:	68 50 00 00 00       	push   $0x50
 80487fb:	e9 40 ff ff ff       	jmp    8048740 <_init+0x2c>

08048800 <bcopy@plt>:
 8048800:	ff 25 30 b1 04 08    	jmp    *0x804b130
 8048806:	68 58 00 00 00       	push   $0x58
 804880b:	e9 30 ff ff ff       	jmp    8048740 <_init+0x2c>

08048810 <strcat@plt>:
 8048810:	ff 25 34 b1 04 08    	jmp    *0x804b134
 8048816:	68 60 00 00 00       	push   $0x60
 804881b:	e9 20 ff ff ff       	jmp    8048740 <_init+0x2c>

08048820 <strcpy@plt>:
 8048820:	ff 25 38 b1 04 08    	jmp    *0x804b138
 8048826:	68 68 00 00 00       	push   $0x68
 804882b:	e9 10 ff ff ff       	jmp    8048740 <_init+0x2c>

08048830 <getenv@plt>:
 8048830:	ff 25 3c b1 04 08    	jmp    *0x804b13c
 8048836:	68 70 00 00 00       	push   $0x70
 804883b:	e9 00 ff ff ff       	jmp    8048740 <_init+0x2c>

08048840 <puts@plt>:
 8048840:	ff 25 40 b1 04 08    	jmp    *0x804b140
 8048846:	68 78 00 00 00       	push   $0x78
 804884b:	e9 f0 fe ff ff       	jmp    8048740 <_init+0x2c>

08048850 <system@plt>:
 8048850:	ff 25 44 b1 04 08    	jmp    *0x804b144
 8048856:	68 80 00 00 00       	push   $0x80
 804885b:	e9 e0 fe ff ff       	jmp    8048740 <_init+0x2c>

08048860 <__gmon_start__@plt>:
 8048860:	ff 25 48 b1 04 08    	jmp    *0x804b148
 8048866:	68 88 00 00 00       	push   $0x88
 804886b:	e9 d0 fe ff ff       	jmp    8048740 <_init+0x2c>

08048870 <exit@plt>:
 8048870:	ff 25 4c b1 04 08    	jmp    *0x804b14c
 8048876:	68 90 00 00 00       	push   $0x90
 804887b:	e9 c0 fe ff ff       	jmp    8048740 <_init+0x2c>

08048880 <__libc_start_main@plt>:
 8048880:	ff 25 50 b1 04 08    	jmp    *0x804b150
 8048886:	68 98 00 00 00       	push   $0x98
 804888b:	e9 b0 fe ff ff       	jmp    8048740 <_init+0x2c>

08048890 <fprintf@plt>:
 8048890:	ff 25 54 b1 04 08    	jmp    *0x804b154
 8048896:	68 a0 00 00 00       	push   $0xa0
 804889b:	e9 a0 fe ff ff       	jmp    8048740 <_init+0x2c>

080488a0 <write@plt>:
 80488a0:	ff 25 58 b1 04 08    	jmp    *0x804b158
 80488a6:	68 a8 00 00 00       	push   $0xa8
 80488ab:	e9 90 fe ff ff       	jmp    8048740 <_init+0x2c>

080488b0 <__isoc99_sscanf@plt>:
 80488b0:	ff 25 5c b1 04 08    	jmp    *0x804b15c
 80488b6:	68 b0 00 00 00       	push   $0xb0
 80488bb:	e9 80 fe ff ff       	jmp    8048740 <_init+0x2c>

080488c0 <fopen@plt>:
 80488c0:	ff 25 60 b1 04 08    	jmp    *0x804b160
 80488c6:	68 b8 00 00 00       	push   $0xb8
 80488cb:	e9 70 fe ff ff       	jmp    8048740 <_init+0x2c>

080488d0 <__errno_location@plt>:
 80488d0:	ff 25 64 b1 04 08    	jmp    *0x804b164
 80488d6:	68 c0 00 00 00       	push   $0xc0
 80488db:	e9 60 fe ff ff       	jmp    8048740 <_init+0x2c>

080488e0 <fputc@plt>:
 80488e0:	ff 25 68 b1 04 08    	jmp    *0x804b168
 80488e6:	68 c8 00 00 00       	push   $0xc8
 80488eb:	e9 50 fe ff ff       	jmp    8048740 <_init+0x2c>

080488f0 <sprintf@plt>:
 80488f0:	ff 25 6c b1 04 08    	jmp    *0x804b16c
 80488f6:	68 d0 00 00 00       	push   $0xd0
 80488fb:	e9 40 fe ff ff       	jmp    8048740 <_init+0x2c>

08048900 <tmpfile@plt>:
 8048900:	ff 25 70 b1 04 08    	jmp    *0x804b170
 8048906:	68 d8 00 00 00       	push   $0xd8
 804890b:	e9 30 fe ff ff       	jmp    8048740 <_init+0x2c>

08048910 <socket@plt>:
 8048910:	ff 25 74 b1 04 08    	jmp    *0x804b174
 8048916:	68 e0 00 00 00       	push   $0xe0
 804891b:	e9 20 fe ff ff       	jmp    8048740 <_init+0x2c>

08048920 <gethostbyname@plt>:
 8048920:	ff 25 78 b1 04 08    	jmp    *0x804b178
 8048926:	68 e8 00 00 00       	push   $0xe8
 804892b:	e9 10 fe ff ff       	jmp    8048740 <_init+0x2c>

08048930 <connect@plt>:
 8048930:	ff 25 7c b1 04 08    	jmp    *0x804b17c
 8048936:	68 f0 00 00 00       	push   $0xf0
 804893b:	e9 00 fe ff ff       	jmp    8048740 <_init+0x2c>

08048940 <close@plt>:
 8048940:	ff 25 80 b1 04 08    	jmp    *0x804b180
 8048946:	68 f8 00 00 00       	push   $0xf8
 804894b:	e9 f0 fd ff ff       	jmp    8048740 <_init+0x2c>

08048950 <__ctype_b_loc@plt>:
 8048950:	ff 25 84 b1 04 08    	jmp    *0x804b184
 8048956:	68 00 01 00 00       	push   $0x100
 804895b:	e9 e0 fd ff ff       	jmp    8048740 <_init+0x2c>

Disassembly of section .text:

08048960 <_start>:
 8048960:	31 ed                	xor    %ebp,%ebp
 8048962:	5e                   	pop    %esi
 8048963:	89 e1                	mov    %esp,%ecx
 8048965:	83 e4 f0             	and    $0xfffffff0,%esp
 8048968:	50                   	push   %eax
 8048969:	54                   	push   %esp
 804896a:	52                   	push   %edx
 804896b:	68 00 98 04 08       	push   $0x8049800
 8048970:	68 90 97 04 08       	push   $0x8049790
 8048975:	51                   	push   %ecx
 8048976:	56                   	push   %esi
 8048977:	68 5b 8a 04 08       	push   $0x8048a5b
 804897c:	e8 ff fe ff ff       	call   8048880 <__libc_start_main@plt>
 8048981:	f4                   	hlt    
 8048982:	66 90                	xchg   %ax,%ax
 8048984:	66 90                	xchg   %ax,%ax
 8048986:	66 90                	xchg   %ax,%ax
 8048988:	66 90                	xchg   %ax,%ax
 804898a:	66 90                	xchg   %ax,%ax
 804898c:	66 90                	xchg   %ax,%ax
 804898e:	66 90                	xchg   %ax,%ax

08048990 <__x86.get_pc_thunk.bx>:
 8048990:	8b 1c 24             	mov    (%esp),%ebx
 8048993:	c3                   	ret    
 8048994:	66 90                	xchg   %ax,%ax
 8048996:	66 90                	xchg   %ax,%ax
 8048998:	66 90                	xchg   %ax,%ax
 804899a:	66 90                	xchg   %ax,%ax
 804899c:	66 90                	xchg   %ax,%ax
 804899e:	66 90                	xchg   %ax,%ax

080489a0 <deregister_tm_clones>:
 80489a0:	b8 07 b6 04 08       	mov    $0x804b607,%eax
 80489a5:	2d 04 b6 04 08       	sub    $0x804b604,%eax
 80489aa:	83 f8 06             	cmp    $0x6,%eax
 80489ad:	76 1a                	jbe    80489c9 <deregister_tm_clones+0x29>
 80489af:	b8 00 00 00 00       	mov    $0x0,%eax
 80489b4:	85 c0                	test   %eax,%eax
 80489b6:	74 11                	je     80489c9 <deregister_tm_clones+0x29>
 80489b8:	55                   	push   %ebp
 80489b9:	89 e5                	mov    %esp,%ebp
 80489bb:	83 ec 14             	sub    $0x14,%esp
 80489be:	68 04 b6 04 08       	push   $0x804b604
 80489c3:	ff d0                	call   *%eax
 80489c5:	83 c4 10             	add    $0x10,%esp
 80489c8:	c9                   	leave  
 80489c9:	f3 c3                	repz ret 
 80489cb:	90                   	nop
 80489cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080489d0 <register_tm_clones>:
 80489d0:	b8 04 b6 04 08       	mov    $0x804b604,%eax
 80489d5:	2d 04 b6 04 08       	sub    $0x804b604,%eax
 80489da:	c1 f8 02             	sar    $0x2,%eax
 80489dd:	89 c2                	mov    %eax,%edx
 80489df:	c1 ea 1f             	shr    $0x1f,%edx
 80489e2:	01 d0                	add    %edx,%eax
 80489e4:	d1 f8                	sar    %eax
 80489e6:	74 1b                	je     8048a03 <register_tm_clones+0x33>
 80489e8:	ba 00 00 00 00       	mov    $0x0,%edx
 80489ed:	85 d2                	test   %edx,%edx
 80489ef:	74 12                	je     8048a03 <register_tm_clones+0x33>
 80489f1:	55                   	push   %ebp
 80489f2:	89 e5                	mov    %esp,%ebp
 80489f4:	83 ec 10             	sub    $0x10,%esp
 80489f7:	50                   	push   %eax
 80489f8:	68 04 b6 04 08       	push   $0x804b604
 80489fd:	ff d2                	call   *%edx
 80489ff:	83 c4 10             	add    $0x10,%esp
 8048a02:	c9                   	leave  
 8048a03:	f3 c3                	repz ret 
 8048a05:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048a10 <__do_global_dtors_aux>:
 8048a10:	80 3d 64 b6 04 08 00 	cmpb   $0x0,0x804b664
 8048a17:	75 13                	jne    8048a2c <__do_global_dtors_aux+0x1c>
 8048a19:	55                   	push   %ebp
 8048a1a:	89 e5                	mov    %esp,%ebp
 8048a1c:	83 ec 08             	sub    $0x8,%esp
 8048a1f:	e8 7c ff ff ff       	call   80489a0 <deregister_tm_clones>
 8048a24:	c6 05 64 b6 04 08 01 	movb   $0x1,0x804b664
 8048a2b:	c9                   	leave  
 8048a2c:	f3 c3                	repz ret 
 8048a2e:	66 90                	xchg   %ax,%ax

08048a30 <frame_dummy>:
 8048a30:	b8 08 b0 04 08       	mov    $0x804b008,%eax
 8048a35:	8b 10                	mov    (%eax),%edx
 8048a37:	85 d2                	test   %edx,%edx
 8048a39:	75 05                	jne    8048a40 <frame_dummy+0x10>
 8048a3b:	eb 93                	jmp    80489d0 <register_tm_clones>
 8048a3d:	8d 76 00             	lea    0x0(%esi),%esi
 8048a40:	ba 00 00 00 00       	mov    $0x0,%edx
 8048a45:	85 d2                	test   %edx,%edx
 8048a47:	74 f2                	je     8048a3b <frame_dummy+0xb>
 8048a49:	55                   	push   %ebp
 8048a4a:	89 e5                	mov    %esp,%ebp
 8048a4c:	83 ec 14             	sub    $0x14,%esp
 8048a4f:	50                   	push   %eax
 8048a50:	ff d2                	call   *%edx
 8048a52:	83 c4 10             	add    $0x10,%esp
 8048a55:	c9                   	leave  
 8048a56:	e9 75 ff ff ff       	jmp    80489d0 <register_tm_clones>

08048a5b <main>:
 8048a5b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048a5f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048a62:	ff 71 fc             	pushl  -0x4(%ecx)
 8048a65:	55                   	push   %ebp
 8048a66:	89 e5                	mov    %esp,%ebp
 8048a68:	53                   	push   %ebx
 8048a69:	51                   	push   %ecx
 8048a6a:	8b 01                	mov    (%ecx),%eax
 8048a6c:	8b 59 04             	mov    0x4(%ecx),%ebx
 8048a6f:	83 f8 01             	cmp    $0x1,%eax
 8048a72:	75 0c                	jne    8048a80 <main+0x25>
 8048a74:	a1 40 b6 04 08       	mov    0x804b640,%eax
 8048a79:	a3 6c b6 04 08       	mov    %eax,0x804b66c
 8048a7e:	eb 5a                	jmp    8048ada <main+0x7f>
 8048a80:	83 f8 02             	cmp    $0x2,%eax
 8048a83:	75 3a                	jne    8048abf <main+0x64>
 8048a85:	83 ec 08             	sub    $0x8,%esp
 8048a88:	68 8b 9b 04 08       	push   $0x8049b8b
 8048a8d:	ff 73 04             	pushl  0x4(%ebx)
 8048a90:	e8 2b fe ff ff       	call   80488c0 <fopen@plt>
 8048a95:	a3 6c b6 04 08       	mov    %eax,0x804b66c
 8048a9a:	83 c4 10             	add    $0x10,%esp
 8048a9d:	85 c0                	test   %eax,%eax
 8048a9f:	75 39                	jne    8048ada <main+0x7f>
 8048aa1:	83 ec 04             	sub    $0x4,%esp
 8048aa4:	ff 73 04             	pushl  0x4(%ebx)
 8048aa7:	ff 33                	pushl  (%ebx)
 8048aa9:	68 20 98 04 08       	push   $0x8049820
 8048aae:	e8 ad fc ff ff       	call   8048760 <printf@plt>
 8048ab3:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048aba:	e8 b1 fd ff ff       	call   8048870 <exit@plt>
 8048abf:	83 ec 08             	sub    $0x8,%esp
 8048ac2:	ff 33                	pushl  (%ebx)
 8048ac4:	68 3d 98 04 08       	push   $0x804983d
 8048ac9:	e8 92 fc ff ff       	call   8048760 <printf@plt>
 8048ace:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048ad5:	e8 96 fd ff ff       	call   8048870 <exit@plt>
 8048ada:	e8 7e 04 00 00       	call   8048f5d <initialize_bomb>
 8048adf:	83 ec 0c             	sub    $0xc,%esp
 8048ae2:	68 78 98 04 08       	push   $0x8049878
 8048ae7:	e8 54 fd ff ff       	call   8048840 <puts@plt>
 8048aec:	c7 04 24 b4 98 04 08 	movl   $0x80498b4,(%esp)
 8048af3:	e8 48 fd ff ff       	call   8048840 <puts@plt>
 8048af8:	e8 13 0b 00 00       	call   8049610 <read_line>
 8048afd:	89 04 24             	mov    %eax,(%esp)
 8048b00:	e8 53 00 00 00       	call   8048b58 <phase_1>
 8048b05:	e8 cd 0b 00 00       	call   80496d7 <phase_defused>
 8048b0a:	c7 04 24 e0 98 04 08 	movl   $0x80498e0,(%esp)
 8048b11:	e8 2a fd ff ff       	call   8048840 <puts@plt>
 8048b16:	e8 f5 0a 00 00       	call   8049610 <read_line>
 8048b1b:	89 04 24             	mov    %eax,(%esp)
 8048b1e:	e8 56 00 00 00       	call   8048b79 <phase_2>
 8048b23:	e8 af 0b 00 00       	call   80496d7 <phase_defused>
 8048b28:	c7 04 24 57 98 04 08 	movl   $0x8049857,(%esp)
 8048b2f:	e8 0c fd ff ff       	call   8048840 <puts@plt>
 8048b34:	e8 d7 0a 00 00       	call   8049610 <read_line>
 8048b39:	89 04 24             	mov    %eax,(%esp)
 8048b3c:	e8 88 00 00 00       	call   8048bc9 <phase_3>
 8048b41:	e8 91 0b 00 00       	call   80496d7 <phase_defused>
 8048b46:	83 c4 10             	add    $0x10,%esp
 8048b49:	b8 00 00 00 00       	mov    $0x0,%eax
 8048b4e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048b51:	59                   	pop    %ecx
 8048b52:	5b                   	pop    %ebx
 8048b53:	5d                   	pop    %ebp
 8048b54:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048b57:	c3                   	ret    

08048b58 <phase_1>:
 8048b58:	83 ec 14             	sub    $0x14,%esp
 8048b5b:	68 0c 99 04 08       	push   $0x804990c
 8048b60:	ff 74 24 1c          	pushl  0x1c(%esp)
 8048b64:	e8 b3 02 00 00       	call   8048e1c <strings_not_equal>
 8048b69:	83 c4 10             	add    $0x10,%esp
 8048b6c:	85 c0                	test   %eax,%eax
 8048b6e:	74 05                	je     8048b75 <phase_1+0x1d>
 8048b70:	e8 23 0a 00 00       	call   8049598 <explode_bomb>
 8048b75:	83 c4 0c             	add    $0xc,%esp
 8048b78:	c3                   	ret    

08048b79 <phase_2>:
 8048b79:	57                   	push   %edi
 8048b7a:	56                   	push   %esi
 8048b7b:	53                   	push   %ebx
 8048b7c:	83 ec 28             	sub    $0x28,%esp
 8048b7f:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048b83:	50                   	push   %eax
 8048b84:	ff 74 24 3c          	pushl  0x3c(%esp)
 8048b88:	e8 48 0a 00 00       	call   80495d5 <read_six_numbers>
 8048b8d:	83 c4 10             	add    $0x10,%esp
 8048b90:	be 00 00 00 00       	mov    $0x0,%esi
 8048b95:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048b9a:	89 df                	mov    %ebx,%edi
 8048b9c:	89 d8                	mov    %ebx,%eax
 8048b9e:	03 44 9c 14          	add    0x14(%esp,%ebx,4),%eax
 8048ba2:	39 44 9c 08          	cmp    %eax,0x8(%esp,%ebx,4)
 8048ba6:	74 05                	je     8048bad <phase_2+0x34>
 8048ba8:	e8 eb 09 00 00       	call   8049598 <explode_bomb>
 8048bad:	03 74 bc 08          	add    0x8(%esp,%edi,4),%esi
 8048bb1:	83 c3 01             	add    $0x1,%ebx
 8048bb4:	83 fb 03             	cmp    $0x3,%ebx
 8048bb7:	75 e1                	jne    8048b9a <phase_2+0x21>
 8048bb9:	85 f6                	test   %esi,%esi
 8048bbb:	75 05                	jne    8048bc2 <phase_2+0x49>
 8048bbd:	e8 d6 09 00 00       	call   8049598 <explode_bomb>
 8048bc2:	83 c4 20             	add    $0x20,%esp
 8048bc5:	5b                   	pop    %ebx
 8048bc6:	5e                   	pop    %esi
 8048bc7:	5f                   	pop    %edi
 8048bc8:	c3                   	ret    

08048bc9 <phase_3>:
 8048bc9:	83 ec 28             	sub    $0x28,%esp
 8048bcc:	8d 44 24 14          	lea    0x14(%esp),%eax
 8048bd0:	50                   	push   %eax
 8048bd1:	8d 44 24 17          	lea    0x17(%esp),%eax
 8048bd5:	50                   	push   %eax
 8048bd6:	8d 44 24 20          	lea    0x20(%esp),%eax
 8048bda:	50                   	push   %eax
 8048bdb:	68 3b 99 04 08       	push   $0x804993b
 8048be0:	ff 74 24 3c          	pushl  0x3c(%esp)
 8048be4:	e8 c7 fc ff ff       	call   80488b0 <__isoc99_sscanf@plt>
 8048be9:	83 c4 20             	add    $0x20,%esp
 8048bec:	83 f8 02             	cmp    $0x2,%eax
 8048bef:	7f 05                	jg     8048bf6 <phase_3+0x2d>
 8048bf1:	e8 a2 09 00 00       	call   8049598 <explode_bomb>
 8048bf6:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%esp)
 8048bfb:	0f 87 fc 00 00 00    	ja     8048cfd <phase_3+0x134>
 8048c01:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048c05:	ff 24 85 4c 99 04 08 	jmp    *0x804994c(,%eax,4)
 8048c0c:	b8 61 00 00 00       	mov    $0x61,%eax
 8048c11:	81 7c 24 08 d5 03 00 	cmpl   $0x3d5,0x8(%esp)
 8048c18:	00 
 8048c19:	0f 84 e8 00 00 00    	je     8048d07 <phase_3+0x13e>
 8048c1f:	e8 74 09 00 00       	call   8049598 <explode_bomb>
 8048c24:	b8 61 00 00 00       	mov    $0x61,%eax
 8048c29:	e9 d9 00 00 00       	jmp    8048d07 <phase_3+0x13e>
 8048c2e:	b8 66 00 00 00       	mov    $0x66,%eax
 8048c33:	81 7c 24 08 f5 00 00 	cmpl   $0xf5,0x8(%esp)
 8048c3a:	00 
 8048c3b:	0f 84 c6 00 00 00    	je     8048d07 <phase_3+0x13e>
 8048c41:	e8 52 09 00 00       	call   8049598 <explode_bomb>
 8048c46:	b8 66 00 00 00       	mov    $0x66,%eax
 8048c4b:	e9 b7 00 00 00       	jmp    8048d07 <phase_3+0x13e>
 8048c50:	b8 6e 00 00 00       	mov    $0x6e,%eax
 8048c55:	81 7c 24 08 7c 02 00 	cmpl   $0x27c,0x8(%esp)
 8048c5c:	00 
 8048c5d:	0f 84 a4 00 00 00    	je     8048d07 <phase_3+0x13e>
 8048c63:	e8 30 09 00 00       	call   8049598 <explode_bomb>
 8048c68:	b8 6e 00 00 00       	mov    $0x6e,%eax
 8048c6d:	e9 95 00 00 00       	jmp    8048d07 <phase_3+0x13e>
 8048c72:	b8 6a 00 00 00       	mov    $0x6a,%eax
 8048c77:	81 7c 24 08 f3 01 00 	cmpl   $0x1f3,0x8(%esp)
 8048c7e:	00 
 8048c7f:	0f 84 82 00 00 00    	je     8048d07 <phase_3+0x13e>
 8048c85:	e8 0e 09 00 00       	call   8049598 <explode_bomb>
 8048c8a:	b8 6a 00 00 00       	mov    $0x6a,%eax
 8048c8f:	eb 76                	jmp    8048d07 <phase_3+0x13e>
 8048c91:	b8 6d 00 00 00       	mov    $0x6d,%eax
 8048c96:	81 7c 24 08 a7 03 00 	cmpl   $0x3a7,0x8(%esp)
 8048c9d:	00 
 8048c9e:	74 67                	je     8048d07 <phase_3+0x13e>
 8048ca0:	e8 f3 08 00 00       	call   8049598 <explode_bomb>
 8048ca5:	b8 6d 00 00 00       	mov    $0x6d,%eax
 8048caa:	eb 5b                	jmp    8048d07 <phase_3+0x13e>
 8048cac:	b8 6c 00 00 00       	mov    $0x6c,%eax
 8048cb1:	81 7c 24 08 59 01 00 	cmpl   $0x159,0x8(%esp)
 8048cb8:	00 
 8048cb9:	74 4c                	je     8048d07 <phase_3+0x13e>
 8048cbb:	e8 d8 08 00 00       	call   8049598 <explode_bomb>
 8048cc0:	b8 6c 00 00 00       	mov    $0x6c,%eax
 8048cc5:	eb 40                	jmp    8048d07 <phase_3+0x13e>
 8048cc7:	b8 6d 00 00 00       	mov    $0x6d,%eax
 8048ccc:	81 7c 24 08 66 02 00 	cmpl   $0x266,0x8(%esp)
 8048cd3:	00 
 8048cd4:	74 31                	je     8048d07 <phase_3+0x13e>
 8048cd6:	e8 bd 08 00 00       	call   8049598 <explode_bomb>
 8048cdb:	b8 6d 00 00 00       	mov    $0x6d,%eax
 8048ce0:	eb 25                	jmp    8048d07 <phase_3+0x13e>
 8048ce2:	b8 76 00 00 00       	mov    $0x76,%eax
 8048ce7:	81 7c 24 08 2b 01 00 	cmpl   $0x12b,0x8(%esp)
 8048cee:	00 
 8048cef:	74 16                	je     8048d07 <phase_3+0x13e>
 8048cf1:	e8 a2 08 00 00       	call   8049598 <explode_bomb>
 8048cf6:	b8 76 00 00 00       	mov    $0x76,%eax
 8048cfb:	eb 0a                	jmp    8048d07 <phase_3+0x13e>
 8048cfd:	e8 96 08 00 00       	call   8049598 <explode_bomb>
 8048d02:	b8 78 00 00 00       	mov    $0x78,%eax
 8048d07:	3a 44 24 07          	cmp    0x7(%esp),%al
 8048d0b:	74 05                	je     8048d12 <phase_3+0x149>
 8048d0d:	e8 86 08 00 00       	call   8049598 <explode_bomb>
 8048d12:	83 c4 1c             	add    $0x1c,%esp
 8048d15:	c3                   	ret    

08048d16 <secret_phase>:
 8048d16:	53                   	push   %ebx
 8048d17:	83 ec 18             	sub    $0x18,%esp
 8048d1a:	e8 f1 08 00 00       	call   8049610 <read_line>
 8048d1f:	89 c3                	mov    %eax,%ebx
 8048d21:	83 ec 0c             	sub    $0xc,%esp
 8048d24:	50                   	push   %eax
 8048d25:	e8 d3 00 00 00       	call   8048dfd <string_length>
 8048d2a:	83 c4 10             	add    $0x10,%esp
 8048d2d:	83 f8 06             	cmp    $0x6,%eax
 8048d30:	74 4b                	je     8048d7d <secret_phase+0x67>
 8048d32:	e8 61 08 00 00       	call   8049598 <explode_bomb>
 8048d37:	eb 44                	jmp    8048d7d <secret_phase+0x67>
 8048d39:	0f b6 0c 13          	movzbl (%ebx,%edx,1),%ecx
 8048d3d:	83 e1 0f             	and    $0xf,%ecx
 8048d40:	0f b6 81 6c 99 04 08 	movzbl 0x804996c(%ecx),%eax
 8048d47:	88 44 14 09          	mov    %al,0x9(%esp,%edx,1)
 8048d4b:	83 c2 01             	add    $0x1,%edx
 8048d4e:	83 fa 06             	cmp    $0x6,%edx
 8048d51:	75 e6                	jne    8048d39 <secret_phase+0x23>
 8048d53:	c6 44 24 0f 00       	movb   $0x0,0xf(%esp)
 8048d58:	83 ec 08             	sub    $0x8,%esp
 8048d5b:	68 44 99 04 08       	push   $0x8049944
 8048d60:	8d 44 24 15          	lea    0x15(%esp),%eax
 8048d64:	50                   	push   %eax
 8048d65:	e8 b2 00 00 00       	call   8048e1c <strings_not_equal>
 8048d6a:	83 c4 10             	add    $0x10,%esp
 8048d6d:	85 c0                	test   %eax,%eax
 8048d6f:	74 05                	je     8048d76 <secret_phase+0x60>
 8048d71:	e8 22 08 00 00       	call   8049598 <explode_bomb>
 8048d76:	e8 5c 09 00 00       	call   80496d7 <phase_defused>
 8048d7b:	eb 07                	jmp    8048d84 <secret_phase+0x6e>
 8048d7d:	ba 00 00 00 00       	mov    $0x0,%edx
 8048d82:	eb b5                	jmp    8048d39 <secret_phase+0x23>
 8048d84:	83 c4 18             	add    $0x18,%esp
 8048d87:	5b                   	pop    %ebx
 8048d88:	c3                   	ret    

08048d89 <sig_handler>:
 8048d89:	83 ec 18             	sub    $0x18,%esp
 8048d8c:	68 7c 99 04 08       	push   $0x804997c
 8048d91:	e8 aa fa ff ff       	call   8048840 <puts@plt>
 8048d96:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048d9d:	e8 2e fa ff ff       	call   80487d0 <sleep@plt>
 8048da2:	c7 04 24 a8 9a 04 08 	movl   $0x8049aa8,(%esp)
 8048da9:	e8 b2 f9 ff ff       	call   8048760 <printf@plt>
 8048dae:	83 c4 04             	add    $0x4,%esp
 8048db1:	ff 35 60 b6 04 08    	pushl  0x804b660
 8048db7:	e8 b4 f9 ff ff       	call   8048770 <fflush@plt>
 8048dbc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048dc3:	e8 08 fa ff ff       	call   80487d0 <sleep@plt>
 8048dc8:	c7 04 24 b0 9a 04 08 	movl   $0x8049ab0,(%esp)
 8048dcf:	e8 6c fa ff ff       	call   8048840 <puts@plt>
 8048dd4:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 8048ddb:	e8 90 fa ff ff       	call   8048870 <exit@plt>

08048de0 <invalid_phase>:
 8048de0:	83 ec 14             	sub    $0x14,%esp
 8048de3:	ff 74 24 18          	pushl  0x18(%esp)
 8048de7:	68 b8 9a 04 08       	push   $0x8049ab8
 8048dec:	e8 6f f9 ff ff       	call   8048760 <printf@plt>
 8048df1:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048df8:	e8 73 fa ff ff       	call   8048870 <exit@plt>

08048dfd <string_length>:
 8048dfd:	8b 54 24 04          	mov    0x4(%esp),%edx
 8048e01:	80 3a 00             	cmpb   $0x0,(%edx)
 8048e04:	74 10                	je     8048e16 <string_length+0x19>
 8048e06:	b8 00 00 00 00       	mov    $0x0,%eax
 8048e0b:	83 c0 01             	add    $0x1,%eax
 8048e0e:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 8048e12:	75 f7                	jne    8048e0b <string_length+0xe>
 8048e14:	f3 c3                	repz ret 
 8048e16:	b8 00 00 00 00       	mov    $0x0,%eax
 8048e1b:	c3                   	ret    

08048e1c <strings_not_equal>:
 8048e1c:	57                   	push   %edi
 8048e1d:	56                   	push   %esi
 8048e1e:	53                   	push   %ebx
 8048e1f:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8048e23:	8b 74 24 14          	mov    0x14(%esp),%esi
 8048e27:	53                   	push   %ebx
 8048e28:	e8 d0 ff ff ff       	call   8048dfd <string_length>
 8048e2d:	89 c7                	mov    %eax,%edi
 8048e2f:	89 34 24             	mov    %esi,(%esp)
 8048e32:	e8 c6 ff ff ff       	call   8048dfd <string_length>
 8048e37:	83 c4 04             	add    $0x4,%esp
 8048e3a:	ba 01 00 00 00       	mov    $0x1,%edx
 8048e3f:	39 c7                	cmp    %eax,%edi
 8048e41:	75 38                	jne    8048e7b <strings_not_equal+0x5f>
 8048e43:	0f b6 03             	movzbl (%ebx),%eax
 8048e46:	84 c0                	test   %al,%al
 8048e48:	74 1e                	je     8048e68 <strings_not_equal+0x4c>
 8048e4a:	3a 06                	cmp    (%esi),%al
 8048e4c:	74 06                	je     8048e54 <strings_not_equal+0x38>
 8048e4e:	eb 1f                	jmp    8048e6f <strings_not_equal+0x53>
 8048e50:	3a 06                	cmp    (%esi),%al
 8048e52:	75 22                	jne    8048e76 <strings_not_equal+0x5a>
 8048e54:	83 c3 01             	add    $0x1,%ebx
 8048e57:	83 c6 01             	add    $0x1,%esi
 8048e5a:	0f b6 03             	movzbl (%ebx),%eax
 8048e5d:	84 c0                	test   %al,%al
 8048e5f:	75 ef                	jne    8048e50 <strings_not_equal+0x34>
 8048e61:	ba 00 00 00 00       	mov    $0x0,%edx
 8048e66:	eb 13                	jmp    8048e7b <strings_not_equal+0x5f>
 8048e68:	ba 00 00 00 00       	mov    $0x0,%edx
 8048e6d:	eb 0c                	jmp    8048e7b <strings_not_equal+0x5f>
 8048e6f:	ba 01 00 00 00       	mov    $0x1,%edx
 8048e74:	eb 05                	jmp    8048e7b <strings_not_equal+0x5f>
 8048e76:	ba 01 00 00 00       	mov    $0x1,%edx
 8048e7b:	89 d0                	mov    %edx,%eax
 8048e7d:	5b                   	pop    %ebx
 8048e7e:	5e                   	pop    %esi
 8048e7f:	5f                   	pop    %edi
 8048e80:	c3                   	ret    

08048e81 <open_clientfd>:
 8048e81:	56                   	push   %esi
 8048e82:	53                   	push   %ebx
 8048e83:	83 ec 18             	sub    $0x18,%esp
 8048e86:	6a 00                	push   $0x0
 8048e88:	6a 01                	push   $0x1
 8048e8a:	6a 02                	push   $0x2
 8048e8c:	e8 7f fa ff ff       	call   8048910 <socket@plt>
 8048e91:	89 c3                	mov    %eax,%ebx
 8048e93:	83 c4 10             	add    $0x10,%esp
 8048e96:	85 c0                	test   %eax,%eax
 8048e98:	79 19                	jns    8048eb3 <open_clientfd+0x32>
 8048e9a:	83 ec 0c             	sub    $0xc,%esp
 8048e9d:	68 c9 9a 04 08       	push   $0x8049ac9
 8048ea2:	e8 99 f9 ff ff       	call   8048840 <puts@plt>
 8048ea7:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048eae:	e8 bd f9 ff ff       	call   8048870 <exit@plt>
 8048eb3:	83 ec 0c             	sub    $0xc,%esp
 8048eb6:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048eba:	e8 61 fa ff ff       	call   8048920 <gethostbyname@plt>
 8048ebf:	83 c4 10             	add    $0x10,%esp
 8048ec2:	85 c0                	test   %eax,%eax
 8048ec4:	75 19                	jne    8048edf <open_clientfd+0x5e>
 8048ec6:	83 ec 0c             	sub    $0xc,%esp
 8048ec9:	68 d7 9a 04 08       	push   $0x8049ad7
 8048ece:	e8 6d f9 ff ff       	call   8048840 <puts@plt>
 8048ed3:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048eda:	e8 91 f9 ff ff       	call   8048870 <exit@plt>
 8048edf:	89 e6                	mov    %esp,%esi
 8048ee1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048ee8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048eef:	00 
 8048ef0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8048ef7:	00 
 8048ef8:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8048eff:	00 
 8048f00:	66 c7 04 24 02 00    	movw   $0x2,(%esp)
 8048f06:	83 ec 04             	sub    $0x4,%esp
 8048f09:	ff 70 0c             	pushl  0xc(%eax)
 8048f0c:	8d 54 24 0c          	lea    0xc(%esp),%edx
 8048f10:	52                   	push   %edx
 8048f11:	8b 40 10             	mov    0x10(%eax),%eax
 8048f14:	ff 30                	pushl  (%eax)
 8048f16:	e8 e5 f8 ff ff       	call   8048800 <bcopy@plt>
 8048f1b:	0f b7 44 24 34       	movzwl 0x34(%esp),%eax
 8048f20:	66 c1 c8 08          	ror    $0x8,%ax
 8048f24:	66 89 44 24 12       	mov    %ax,0x12(%esp)
 8048f29:	83 c4 0c             	add    $0xc,%esp
 8048f2c:	6a 10                	push   $0x10
 8048f2e:	56                   	push   %esi
 8048f2f:	53                   	push   %ebx
 8048f30:	e8 fb f9 ff ff       	call   8048930 <connect@plt>
 8048f35:	83 c4 10             	add    $0x10,%esp
 8048f38:	85 c0                	test   %eax,%eax
 8048f3a:	79 19                	jns    8048f55 <open_clientfd+0xd4>
 8048f3c:	83 ec 0c             	sub    $0xc,%esp
 8048f3f:	68 e5 9a 04 08       	push   $0x8049ae5
 8048f44:	e8 f7 f8 ff ff       	call   8048840 <puts@plt>
 8048f49:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048f50:	e8 1b f9 ff ff       	call   8048870 <exit@plt>
 8048f55:	89 d8                	mov    %ebx,%eax
 8048f57:	83 c4 14             	add    $0x14,%esp
 8048f5a:	5b                   	pop    %ebx
 8048f5b:	5e                   	pop    %esi
 8048f5c:	c3                   	ret    

08048f5d <initialize_bomb>:
 8048f5d:	83 ec 14             	sub    $0x14,%esp
 8048f60:	68 89 8d 04 08       	push   $0x8048d89
 8048f65:	6a 02                	push   $0x2
 8048f67:	e8 54 f8 ff ff       	call   80487c0 <signal@plt>
 8048f6c:	83 c4 08             	add    $0x8,%esp
 8048f6f:	6a 50                	push   $0x50
 8048f71:	68 f3 9a 04 08       	push   $0x8049af3
 8048f76:	e8 06 ff ff ff       	call   8048e81 <open_clientfd>
 8048f7b:	89 04 24             	mov    %eax,(%esp)
 8048f7e:	e8 bd f9 ff ff       	call   8048940 <close@plt>
 8048f83:	83 c4 1c             	add    $0x1c,%esp
 8048f86:	c3                   	ret    

08048f87 <blank_line>:
 8048f87:	56                   	push   %esi
 8048f88:	53                   	push   %ebx
 8048f89:	83 ec 04             	sub    $0x4,%esp
 8048f8c:	8b 74 24 10          	mov    0x10(%esp),%esi
 8048f90:	eb 14                	jmp    8048fa6 <blank_line+0x1f>
 8048f92:	e8 b9 f9 ff ff       	call   8048950 <__ctype_b_loc@plt>
 8048f97:	83 c6 01             	add    $0x1,%esi
 8048f9a:	0f be db             	movsbl %bl,%ebx
 8048f9d:	8b 00                	mov    (%eax),%eax
 8048f9f:	f6 44 58 01 20       	testb  $0x20,0x1(%eax,%ebx,2)
 8048fa4:	74 0e                	je     8048fb4 <blank_line+0x2d>
 8048fa6:	0f b6 1e             	movzbl (%esi),%ebx
 8048fa9:	84 db                	test   %bl,%bl
 8048fab:	75 e5                	jne    8048f92 <blank_line+0xb>
 8048fad:	b8 01 00 00 00       	mov    $0x1,%eax
 8048fb2:	eb 05                	jmp    8048fb9 <blank_line+0x32>
 8048fb4:	b8 00 00 00 00       	mov    $0x0,%eax
 8048fb9:	83 c4 04             	add    $0x4,%esp
 8048fbc:	5b                   	pop    %ebx
 8048fbd:	5e                   	pop    %esi
 8048fbe:	c3                   	ret    

08048fbf <skip>:
 8048fbf:	53                   	push   %ebx
 8048fc0:	83 ec 08             	sub    $0x8,%esp
 8048fc3:	83 ec 04             	sub    $0x4,%esp
 8048fc6:	ff 35 6c b6 04 08    	pushl  0x804b66c
 8048fcc:	6a 50                	push   $0x50
 8048fce:	a1 68 b6 04 08       	mov    0x804b668,%eax
 8048fd3:	8d 04 80             	lea    (%eax,%eax,4),%eax
 8048fd6:	c1 e0 04             	shl    $0x4,%eax
 8048fd9:	05 80 b6 04 08       	add    $0x804b680,%eax
 8048fde:	50                   	push   %eax
 8048fdf:	e8 bc f7 ff ff       	call   80487a0 <fgets@plt>
 8048fe4:	89 c3                	mov    %eax,%ebx
 8048fe6:	83 c4 10             	add    $0x10,%esp
 8048fe9:	85 c0                	test   %eax,%eax
 8048feb:	74 10                	je     8048ffd <skip+0x3e>
 8048fed:	83 ec 0c             	sub    $0xc,%esp
 8048ff0:	50                   	push   %eax
 8048ff1:	e8 91 ff ff ff       	call   8048f87 <blank_line>
 8048ff6:	83 c4 10             	add    $0x10,%esp
 8048ff9:	85 c0                	test   %eax,%eax
 8048ffb:	75 c6                	jne    8048fc3 <skip+0x4>
 8048ffd:	89 d8                	mov    %ebx,%eax
 8048fff:	83 c4 08             	add    $0x8,%esp
 8049002:	5b                   	pop    %ebx
 8049003:	c3                   	ret    

08049004 <writen>:
 8049004:	55                   	push   %ebp
 8049005:	57                   	push   %edi
 8049006:	56                   	push   %esi
 8049007:	53                   	push   %ebx
 8049008:	83 ec 0c             	sub    $0xc,%esp
 804900b:	8b 7c 24 20          	mov    0x20(%esp),%edi
 804900f:	8b 74 24 24          	mov    0x24(%esp),%esi
 8049013:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 8049017:	85 ed                	test   %ebp,%ebp
 8049019:	74 29                	je     8049044 <writen+0x40>
 804901b:	89 eb                	mov    %ebp,%ebx
 804901d:	83 ec 04             	sub    $0x4,%esp
 8049020:	53                   	push   %ebx
 8049021:	56                   	push   %esi
 8049022:	57                   	push   %edi
 8049023:	e8 78 f8 ff ff       	call   80488a0 <write@plt>
 8049028:	83 c4 10             	add    $0x10,%esp
 804902b:	85 c0                	test   %eax,%eax
 804902d:	7f 0f                	jg     804903e <writen+0x3a>
 804902f:	e8 9c f8 ff ff       	call   80488d0 <__errno_location@plt>
 8049034:	83 38 04             	cmpl   $0x4,(%eax)
 8049037:	75 0f                	jne    8049048 <writen+0x44>
 8049039:	b8 00 00 00 00       	mov    $0x0,%eax
 804903e:	01 c6                	add    %eax,%esi
 8049040:	29 c3                	sub    %eax,%ebx
 8049042:	75 d9                	jne    804901d <writen+0x19>
 8049044:	89 e8                	mov    %ebp,%eax
 8049046:	eb 05                	jmp    804904d <writen+0x49>
 8049048:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804904d:	83 c4 0c             	add    $0xc,%esp
 8049050:	5b                   	pop    %ebx
 8049051:	5e                   	pop    %esi
 8049052:	5f                   	pop    %edi
 8049053:	5d                   	pop    %ebp
 8049054:	c3                   	ret    

08049055 <send_msg>:
 8049055:	55                   	push   %ebp
 8049056:	57                   	push   %edi
 8049057:	56                   	push   %esi
 8049058:	53                   	push   %ebx
 8049059:	81 ec 80 24 00 00    	sub    $0x2480,%esp
 804905f:	6a 00                	push   $0x0
 8049061:	6a 01                	push   $0x1
 8049063:	6a 02                	push   $0x2
 8049065:	e8 a6 f8 ff ff       	call   8048910 <socket@plt>
 804906a:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804906e:	83 c4 10             	add    $0x10,%esp
 8049071:	85 c0                	test   %eax,%eax
 8049073:	79 30                	jns    80490a5 <send_msg+0x50>
 8049075:	83 ec 04             	sub    $0x4,%esp
 8049078:	68 13 9b 04 08       	push   $0x8049b13
 804907d:	68 39 98 04 08       	push   $0x8049839
 8049082:	ff 35 60 b6 04 08    	pushl  0x804b660
 8049088:	e8 03 f8 ff ff       	call   8048890 <fprintf@plt>
 804908d:	83 c4 04             	add    $0x4,%esp
 8049090:	ff 74 24 18          	pushl  0x18(%esp)
 8049094:	e8 a7 f8 ff ff       	call   8048940 <close@plt>
 8049099:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80490a0:	e8 cb f7 ff ff       	call   8048870 <exit@plt>
 80490a5:	c7 84 24 64 24 00 00 	movl   $0x0,0x2464(%esp)
 80490ac:	00 00 00 00 
 80490b0:	c7 84 24 68 24 00 00 	movl   $0x0,0x2468(%esp)
 80490b7:	00 00 00 00 
 80490bb:	c7 84 24 6c 24 00 00 	movl   $0x0,0x246c(%esp)
 80490c2:	00 00 00 00 
 80490c6:	66 c7 84 24 60 24 00 	movw   $0x2,0x2460(%esp)
 80490cd:	00 02 00 
 80490d0:	66 c7 84 24 62 24 00 	movw   $0x62cc,0x2462(%esp)
 80490d7:	00 cc 62 
 80490da:	83 ec 04             	sub    $0x4,%esp
 80490dd:	8d 84 24 68 24 00 00 	lea    0x2468(%esp),%eax
 80490e4:	50                   	push   %eax
 80490e5:	68 f3 9a 04 08       	push   $0x8049af3
 80490ea:	6a 02                	push   $0x2
 80490ec:	e8 9f f6 ff ff       	call   8048790 <inet_pton@plt>
 80490f1:	83 c4 10             	add    $0x10,%esp
 80490f4:	85 c0                	test   %eax,%eax
 80490f6:	79 3b                	jns    8049133 <send_msg+0xde>
 80490f8:	83 ec 04             	sub    $0x4,%esp
 80490fb:	68 87 9b 04 08       	push   $0x8049b87
 8049100:	68 39 98 04 08       	push   $0x8049839
 8049105:	ff 35 60 b6 04 08    	pushl  0x804b660
 804910b:	e8 80 f7 ff ff       	call   8048890 <fprintf@plt>
 8049110:	83 c4 10             	add    $0x10,%esp
 8049113:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
 8049118:	74 0f                	je     8049129 <send_msg+0xd4>
 804911a:	83 ec 0c             	sub    $0xc,%esp
 804911d:	ff 74 24 18          	pushl  0x18(%esp)
 8049121:	e8 1a f8 ff ff       	call   8048940 <close@plt>
 8049126:	83 c4 10             	add    $0x10,%esp
 8049129:	83 ec 0c             	sub    $0xc,%esp
 804912c:	6a 01                	push   $0x1
 804912e:	e8 3d f7 ff ff       	call   8048870 <exit@plt>
 8049133:	83 ec 04             	sub    $0x4,%esp
 8049136:	6a 10                	push   $0x10
 8049138:	8d 84 24 68 24 00 00 	lea    0x2468(%esp),%eax
 804913f:	50                   	push   %eax
 8049140:	ff 74 24 18          	pushl  0x18(%esp)
 8049144:	e8 e7 f7 ff ff       	call   8048930 <connect@plt>
 8049149:	83 c4 10             	add    $0x10,%esp
 804914c:	85 c0                	test   %eax,%eax
 804914e:	79 3b                	jns    804918b <send_msg+0x136>
 8049150:	83 ec 04             	sub    $0x4,%esp
 8049153:	68 20 9b 04 08       	push   $0x8049b20
 8049158:	68 39 98 04 08       	push   $0x8049839
 804915d:	ff 35 60 b6 04 08    	pushl  0x804b660
 8049163:	e8 28 f7 ff ff       	call   8048890 <fprintf@plt>
 8049168:	83 c4 10             	add    $0x10,%esp
 804916b:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
 8049170:	74 0f                	je     8049181 <send_msg+0x12c>
 8049172:	83 ec 0c             	sub    $0xc,%esp
 8049175:	ff 74 24 18          	pushl  0x18(%esp)
 8049179:	e8 c2 f7 ff ff       	call   8048940 <close@plt>
 804917e:	83 c4 10             	add    $0x10,%esp
 8049181:	83 ec 0c             	sub    $0xc,%esp
 8049184:	6a 01                	push   $0x1
 8049186:	e8 e5 f6 ff ff       	call   8048870 <exit@plt>
 804918b:	8d 74 24 60          	lea    0x60(%esp),%esi
 804918f:	c7 44 24 60 53 75 62 	movl   $0x6a627553,0x60(%esp)
 8049196:	6a 
 8049197:	c7 44 24 64 65 63 74 	movl   $0x3a746365,0x64(%esp)
 804919e:	3a 
 804919f:	c7 44 24 68 20 42 6f 	movl   $0x6d6f4220,0x68(%esp)
 80491a6:	6d 
 80491a7:	c7 44 24 6c 62 20 6e 	movl   $0x6f6e2062,0x6c(%esp)
 80491ae:	6f 
 80491af:	c7 44 24 70 74 69 66 	movl   $0x69666974,0x70(%esp)
 80491b6:	69 
 80491b7:	c7 44 24 74 63 61 74 	movl   $0x69746163,0x74(%esp)
 80491be:	69 
 80491bf:	c7 44 24 78 6f 6e 0a 	movl   $0xa6e6f,0x78(%esp)
 80491c6:	00 
 80491c7:	83 ec 08             	sub    $0x8,%esp
 80491ca:	56                   	push   %esi
 80491cb:	8d 9c 24 6c 04 00 00 	lea    0x46c(%esp),%ebx
 80491d2:	53                   	push   %ebx
 80491d3:	e8 38 f6 ff ff       	call   8048810 <strcat@plt>
 80491d8:	66 c7 44 24 70 0a 00 	movw   $0xa,0x70(%esp)
 80491df:	83 c4 08             	add    $0x8,%esp
 80491e2:	56                   	push   %esi
 80491e3:	53                   	push   %ebx
 80491e4:	e8 27 f6 ff ff       	call   8048810 <strcat@plt>
 80491e9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80491f0:	e8 5b f5 ff ff       	call   8048750 <cuserid@plt>
 80491f5:	83 c4 10             	add    $0x10,%esp
 80491f8:	85 c0                	test   %eax,%eax
 80491fa:	75 16                	jne    8049212 <send_msg+0x1bd>
 80491fc:	c7 44 24 10 6e 6f 62 	movl   $0x6f626f6e,0x10(%esp)
 8049203:	6f 
 8049204:	66 c7 44 24 14 64 79 	movw   $0x7964,0x14(%esp)
 804920b:	c6 44 24 16 00       	movb   $0x0,0x16(%esp)
 8049210:	eb 11                	jmp    8049223 <send_msg+0x1ce>
 8049212:	83 ec 08             	sub    $0x8,%esp
 8049215:	50                   	push   %eax
 8049216:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 804921a:	50                   	push   %eax
 804921b:	e8 00 f6 ff ff       	call   8048820 <strcpy@plt>
 8049220:	83 c4 10             	add    $0x10,%esp
 8049223:	8b 15 68 b6 04 08    	mov    0x804b668,%edx
 8049229:	b8 02 9b 04 08       	mov    $0x8049b02,%eax
 804922e:	83 bc 24 90 24 00 00 	cmpl   $0x0,0x2490(%esp)
 8049235:	00 
 8049236:	75 05                	jne    804923d <send_msg+0x1e8>
 8049238:	b8 0a 9b 04 08       	mov    $0x8049b0a,%eax
 804923d:	83 ec 04             	sub    $0x4,%esp
 8049240:	52                   	push   %edx
 8049241:	50                   	push   %eax
 8049242:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8049246:	50                   	push   %eax
 8049247:	ff 35 00 b6 04 08    	pushl  0x804b600
 804924d:	68 00 b2 04 08       	push   $0x804b200
 8049252:	68 2e 9b 04 08       	push   $0x8049b2e
 8049257:	8d 5c 24 7c          	lea    0x7c(%esp),%ebx
 804925b:	53                   	push   %ebx
 804925c:	e8 8f f6 ff ff       	call   80488f0 <sprintf@plt>
 8049261:	83 c4 18             	add    $0x18,%esp
 8049264:	53                   	push   %ebx
 8049265:	8d 84 24 6c 04 00 00 	lea    0x46c(%esp),%eax
 804926c:	50                   	push   %eax
 804926d:	e8 9e f5 ff ff       	call   8048810 <strcat@plt>
 8049272:	83 c4 10             	add    $0x10,%esp
 8049275:	83 3d 68 b6 04 08 00 	cmpl   $0x0,0x804b668
 804927c:	7e 50                	jle    80492ce <send_msg+0x279>
 804927e:	be 80 b6 04 08       	mov    $0x804b680,%esi
 8049283:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049288:	8d 6c 24 10          	lea    0x10(%esp),%ebp
 804928c:	8d 7c 24 60          	lea    0x60(%esp),%edi
 8049290:	83 c3 01             	add    $0x1,%ebx
 8049293:	83 ec 04             	sub    $0x4,%esp
 8049296:	56                   	push   %esi
 8049297:	53                   	push   %ebx
 8049298:	55                   	push   %ebp
 8049299:	ff 35 00 b6 04 08    	pushl  0x804b600
 804929f:	68 00 b2 04 08       	push   $0x804b200
 80492a4:	68 4a 9b 04 08       	push   $0x8049b4a
 80492a9:	57                   	push   %edi
 80492aa:	e8 41 f6 ff ff       	call   80488f0 <sprintf@plt>
 80492af:	83 c4 18             	add    $0x18,%esp
 80492b2:	57                   	push   %edi
 80492b3:	8d 84 24 6c 04 00 00 	lea    0x46c(%esp),%eax
 80492ba:	50                   	push   %eax
 80492bb:	e8 50 f5 ff ff       	call   8048810 <strcat@plt>
 80492c0:	83 c6 50             	add    $0x50,%esi
 80492c3:	83 c4 10             	add    $0x10,%esp
 80492c6:	39 1d 68 b6 04 08    	cmp    %ebx,0x804b668
 80492cc:	7f c2                	jg     8049290 <send_msg+0x23b>
 80492ce:	8d 9c 24 60 04 00 00 	lea    0x460(%esp),%ebx
 80492d5:	be ff ff ff ff       	mov    $0xffffffff,%esi
 80492da:	89 df                	mov    %ebx,%edi
 80492dc:	bd 00 00 00 00       	mov    $0x0,%ebp
 80492e1:	89 f1                	mov    %esi,%ecx
 80492e3:	89 e8                	mov    %ebp,%eax
 80492e5:	f2 ae                	repnz scas %es:(%edi),%al
 80492e7:	f7 d1                	not    %ecx
 80492e9:	83 e9 01             	sub    $0x1,%ecx
 80492ec:	83 ec 04             	sub    $0x4,%esp
 80492ef:	51                   	push   %ecx
 80492f0:	53                   	push   %ebx
 80492f1:	ff 74 24 18          	pushl  0x18(%esp)
 80492f5:	e8 0a fd ff ff       	call   8049004 <writen>
 80492fa:	89 c2                	mov    %eax,%edx
 80492fc:	89 df                	mov    %ebx,%edi
 80492fe:	89 f1                	mov    %esi,%ecx
 8049300:	89 e8                	mov    %ebp,%eax
 8049302:	f2 ae                	repnz scas %es:(%edi),%al
 8049304:	f7 d1                	not    %ecx
 8049306:	83 e9 01             	sub    $0x1,%ecx
 8049309:	83 c4 10             	add    $0x10,%esp
 804930c:	39 ca                	cmp    %ecx,%edx
 804930e:	73 3b                	jae    804934b <send_msg+0x2f6>
 8049310:	83 ec 04             	sub    $0x4,%esp
 8049313:	68 66 9b 04 08       	push   $0x8049b66
 8049318:	68 39 98 04 08       	push   $0x8049839
 804931d:	ff 35 60 b6 04 08    	pushl  0x804b660
 8049323:	e8 68 f5 ff ff       	call   8048890 <fprintf@plt>
 8049328:	83 c4 10             	add    $0x10,%esp
 804932b:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
 8049330:	74 0f                	je     8049341 <send_msg+0x2ec>
 8049332:	83 ec 0c             	sub    $0xc,%esp
 8049335:	ff 74 24 18          	pushl  0x18(%esp)
 8049339:	e8 02 f6 ff ff       	call   8048940 <close@plt>
 804933e:	83 c4 10             	add    $0x10,%esp
 8049341:	83 ec 0c             	sub    $0xc,%esp
 8049344:	6a 01                	push   $0x1
 8049346:	e8 25 f5 ff ff       	call   8048870 <exit@plt>
 804934b:	83 ec 0c             	sub    $0xc,%esp
 804934e:	ff 74 24 18          	pushl  0x18(%esp)
 8049352:	e8 e9 f5 ff ff       	call   8048940 <close@plt>
 8049357:	81 c4 8c 24 00 00    	add    $0x248c,%esp
 804935d:	5b                   	pop    %ebx
 804935e:	5e                   	pop    %esi
 804935f:	5f                   	pop    %edi
 8049360:	5d                   	pop    %ebp
 8049361:	c3                   	ret    

08049362 <send_msg_2>:
 8049362:	55                   	push   %ebp
 8049363:	57                   	push   %edi
 8049364:	56                   	push   %esi
 8049365:	53                   	push   %ebx
 8049366:	83 ec 78             	sub    $0x78,%esp
 8049369:	6a 00                	push   $0x0
 804936b:	e8 10 f4 ff ff       	call   8048780 <dup@plt>
 8049370:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8049374:	83 c4 10             	add    $0x10,%esp
 8049377:	83 f8 ff             	cmp    $0xffffffff,%eax
 804937a:	75 19                	jne    8049395 <send_msg_2+0x33>
 804937c:	83 ec 0c             	sub    $0xc,%esp
 804937f:	68 79 9b 04 08       	push   $0x8049b79
 8049384:	e8 b7 f4 ff ff       	call   8048840 <puts@plt>
 8049389:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049390:	e8 db f4 ff ff       	call   8048870 <exit@plt>
 8049395:	83 ec 0c             	sub    $0xc,%esp
 8049398:	6a 00                	push   $0x0
 804939a:	e8 a1 f5 ff ff       	call   8048940 <close@plt>
 804939f:	83 c4 10             	add    $0x10,%esp
 80493a2:	83 f8 ff             	cmp    $0xffffffff,%eax
 80493a5:	75 19                	jne    80493c0 <send_msg_2+0x5e>
 80493a7:	83 ec 0c             	sub    $0xc,%esp
 80493aa:	68 8d 9b 04 08       	push   $0x8049b8d
 80493af:	e8 8c f4 ff ff       	call   8048840 <puts@plt>
 80493b4:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80493bb:	e8 b0 f4 ff ff       	call   8048870 <exit@plt>
 80493c0:	e8 3b f5 ff ff       	call   8048900 <tmpfile@plt>
 80493c5:	89 c7                	mov    %eax,%edi
 80493c7:	85 c0                	test   %eax,%eax
 80493c9:	75 19                	jne    80493e4 <send_msg_2+0x82>
 80493cb:	83 ec 0c             	sub    $0xc,%esp
 80493ce:	68 a0 9b 04 08       	push   $0x8049ba0
 80493d3:	e8 68 f4 ff ff       	call   8048840 <puts@plt>
 80493d8:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80493df:	e8 8c f4 ff ff       	call   8048870 <exit@plt>
 80493e4:	50                   	push   %eax
 80493e5:	6a 1b                	push   $0x1b
 80493e7:	6a 01                	push   $0x1
 80493e9:	68 b5 9b 04 08       	push   $0x8049bb5
 80493ee:	e8 fd f3 ff ff       	call   80487f0 <fwrite@plt>
 80493f3:	83 c4 08             	add    $0x8,%esp
 80493f6:	57                   	push   %edi
 80493f7:	6a 0a                	push   $0xa
 80493f9:	e8 e2 f4 ff ff       	call   80488e0 <fputc@plt>
 80493fe:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049405:	e8 46 f3 ff ff       	call   8048750 <cuserid@plt>
 804940a:	83 c4 10             	add    $0x10,%esp
 804940d:	85 c0                	test   %eax,%eax
 804940f:	75 16                	jne    8049427 <send_msg_2+0xc5>
 8049411:	c7 44 24 10 6e 6f 62 	movl   $0x6f626f6e,0x10(%esp)
 8049418:	6f 
 8049419:	66 c7 44 24 14 64 79 	movw   $0x7964,0x14(%esp)
 8049420:	c6 44 24 16 00       	movb   $0x0,0x16(%esp)
 8049425:	eb 11                	jmp    8049438 <send_msg_2+0xd6>
 8049427:	83 ec 08             	sub    $0x8,%esp
 804942a:	50                   	push   %eax
 804942b:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 804942f:	50                   	push   %eax
 8049430:	e8 eb f3 ff ff       	call   8048820 <strcpy@plt>
 8049435:	83 c4 10             	add    $0x10,%esp
 8049438:	8b 15 68 b6 04 08    	mov    0x804b668,%edx
 804943e:	b8 02 9b 04 08       	mov    $0x8049b02,%eax
 8049443:	83 bc 24 80 00 00 00 	cmpl   $0x0,0x80(%esp)
 804944a:	00 
 804944b:	75 05                	jne    8049452 <send_msg_2+0xf0>
 804944d:	b8 0a 9b 04 08       	mov    $0x8049b0a,%eax
 8049452:	83 ec 04             	sub    $0x4,%esp
 8049455:	52                   	push   %edx
 8049456:	50                   	push   %eax
 8049457:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 804945b:	50                   	push   %eax
 804945c:	ff 35 00 b6 04 08    	pushl  0x804b600
 8049462:	68 00 b2 04 08       	push   $0x804b200
 8049467:	68 2e 9b 04 08       	push   $0x8049b2e
 804946c:	57                   	push   %edi
 804946d:	e8 1e f4 ff ff       	call   8048890 <fprintf@plt>
 8049472:	83 c4 20             	add    $0x20,%esp
 8049475:	83 3d 68 b6 04 08 00 	cmpl   $0x0,0x804b668
 804947c:	7e 3b                	jle    80494b9 <send_msg_2+0x157>
 804947e:	be 80 b6 04 08       	mov    $0x804b680,%esi
 8049483:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049488:	8d 6c 24 10          	lea    0x10(%esp),%ebp
 804948c:	83 c3 01             	add    $0x1,%ebx
 804948f:	83 ec 04             	sub    $0x4,%esp
 8049492:	56                   	push   %esi
 8049493:	53                   	push   %ebx
 8049494:	55                   	push   %ebp
 8049495:	ff 35 00 b6 04 08    	pushl  0x804b600
 804949b:	68 00 b2 04 08       	push   $0x804b200
 80494a0:	68 4a 9b 04 08       	push   $0x8049b4a
 80494a5:	57                   	push   %edi
 80494a6:	e8 e5 f3 ff ff       	call   8048890 <fprintf@plt>
 80494ab:	83 c6 50             	add    $0x50,%esi
 80494ae:	83 c4 20             	add    $0x20,%esp
 80494b1:	39 1d 68 b6 04 08    	cmp    %ebx,0x804b668
 80494b7:	7f d3                	jg     804948c <send_msg_2+0x12a>
 80494b9:	83 ec 0c             	sub    $0xc,%esp
 80494bc:	57                   	push   %edi
 80494bd:	e8 1e f3 ff ff       	call   80487e0 <rewind@plt>
 80494c2:	c7 04 24 d1 9b 04 08 	movl   $0x8049bd1,(%esp)
 80494c9:	68 db 9b 04 08       	push   $0x8049bdb
 80494ce:	68 e6 9b 04 08       	push   $0x8049be6
 80494d3:	68 fd 9b 04 08       	push   $0x8049bfd
 80494d8:	68 c0 bc 04 08       	push   $0x804bcc0
 80494dd:	e8 0e f4 ff ff       	call   80488f0 <sprintf@plt>
 80494e2:	83 c4 14             	add    $0x14,%esp
 80494e5:	68 c0 bc 04 08       	push   $0x804bcc0
 80494ea:	e8 61 f3 ff ff       	call   8048850 <system@plt>
 80494ef:	83 c4 10             	add    $0x10,%esp
 80494f2:	85 c0                	test   %eax,%eax
 80494f4:	74 19                	je     804950f <send_msg_2+0x1ad>
 80494f6:	83 ec 0c             	sub    $0xc,%esp
 80494f9:	68 06 9c 04 08       	push   $0x8049c06
 80494fe:	e8 3d f3 ff ff       	call   8048840 <puts@plt>
 8049503:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804950a:	e8 61 f3 ff ff       	call   8048870 <exit@plt>
 804950f:	83 ec 0c             	sub    $0xc,%esp
 8049512:	57                   	push   %edi
 8049513:	e8 98 f2 ff ff       	call   80487b0 <fclose@plt>
 8049518:	83 c4 10             	add    $0x10,%esp
 804951b:	85 c0                	test   %eax,%eax
 804951d:	74 19                	je     8049538 <send_msg_2+0x1d6>
 804951f:	83 ec 0c             	sub    $0xc,%esp
 8049522:	68 20 9c 04 08       	push   $0x8049c20
 8049527:	e8 14 f3 ff ff       	call   8048840 <puts@plt>
 804952c:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049533:	e8 38 f3 ff ff       	call   8048870 <exit@plt>
 8049538:	83 ec 0c             	sub    $0xc,%esp
 804953b:	ff 74 24 18          	pushl  0x18(%esp)
 804953f:	e8 3c f2 ff ff       	call   8048780 <dup@plt>
 8049544:	83 c4 10             	add    $0x10,%esp
 8049547:	85 c0                	test   %eax,%eax
 8049549:	74 19                	je     8049564 <send_msg_2+0x202>
 804954b:	83 ec 0c             	sub    $0xc,%esp
 804954e:	68 39 9c 04 08       	push   $0x8049c39
 8049553:	e8 e8 f2 ff ff       	call   8048840 <puts@plt>
 8049558:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804955f:	e8 0c f3 ff ff       	call   8048870 <exit@plt>
 8049564:	83 ec 0c             	sub    $0xc,%esp
 8049567:	ff 74 24 18          	pushl  0x18(%esp)
 804956b:	e8 d0 f3 ff ff       	call   8048940 <close@plt>
 8049570:	83 c4 10             	add    $0x10,%esp
 8049573:	85 c0                	test   %eax,%eax
 8049575:	74 19                	je     8049590 <send_msg_2+0x22e>
 8049577:	83 ec 0c             	sub    $0xc,%esp
 804957a:	68 54 9c 04 08       	push   $0x8049c54
 804957f:	e8 bc f2 ff ff       	call   8048840 <puts@plt>
 8049584:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804958b:	e8 e0 f2 ff ff       	call   8048870 <exit@plt>
 8049590:	83 c4 6c             	add    $0x6c,%esp
 8049593:	5b                   	pop    %ebx
 8049594:	5e                   	pop    %esi
 8049595:	5f                   	pop    %edi
 8049596:	5d                   	pop    %ebp
 8049597:	c3                   	ret    

08049598 <explode_bomb>:
 8049598:	83 ec 18             	sub    $0x18,%esp
 804959b:	68 6b 9c 04 08       	push   $0x8049c6b
 80495a0:	e8 9b f2 ff ff       	call   8048840 <puts@plt>
 80495a5:	c7 04 24 74 9c 04 08 	movl   $0x8049c74,(%esp)
 80495ac:	e8 8f f2 ff ff       	call   8048840 <puts@plt>
 80495b1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80495b8:	e8 98 fa ff ff       	call   8049055 <send_msg>
 80495bd:	c7 04 24 b4 99 04 08 	movl   $0x80499b4,(%esp)
 80495c4:	e8 77 f2 ff ff       	call   8048840 <puts@plt>
 80495c9:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80495d0:	e8 9b f2 ff ff       	call   8048870 <exit@plt>

080495d5 <read_six_numbers>:
 80495d5:	83 ec 0c             	sub    $0xc,%esp
 80495d8:	8b 44 24 14          	mov    0x14(%esp),%eax
 80495dc:	8d 50 14             	lea    0x14(%eax),%edx
 80495df:	52                   	push   %edx
 80495e0:	8d 50 10             	lea    0x10(%eax),%edx
 80495e3:	52                   	push   %edx
 80495e4:	8d 50 0c             	lea    0xc(%eax),%edx
 80495e7:	52                   	push   %edx
 80495e8:	8d 50 08             	lea    0x8(%eax),%edx
 80495eb:	52                   	push   %edx
 80495ec:	8d 50 04             	lea    0x4(%eax),%edx
 80495ef:	52                   	push   %edx
 80495f0:	50                   	push   %eax
 80495f1:	68 8b 9c 04 08       	push   $0x8049c8b
 80495f6:	ff 74 24 2c          	pushl  0x2c(%esp)
 80495fa:	e8 b1 f2 ff ff       	call   80488b0 <__isoc99_sscanf@plt>
 80495ff:	83 c4 20             	add    $0x20,%esp
 8049602:	83 f8 05             	cmp    $0x5,%eax
 8049605:	7f 05                	jg     804960c <read_six_numbers+0x37>
 8049607:	e8 8c ff ff ff       	call   8049598 <explode_bomb>
 804960c:	83 c4 0c             	add    $0xc,%esp
 804960f:	c3                   	ret    

08049610 <read_line>:
 8049610:	57                   	push   %edi
 8049611:	56                   	push   %esi
 8049612:	53                   	push   %ebx
 8049613:	e8 a7 f9 ff ff       	call   8048fbf <skip>
 8049618:	85 c0                	test   %eax,%eax
 804961a:	75 62                	jne    804967e <read_line+0x6e>
 804961c:	a1 40 b6 04 08       	mov    0x804b640,%eax
 8049621:	39 05 6c b6 04 08    	cmp    %eax,0x804b66c
 8049627:	75 12                	jne    804963b <read_line+0x2b>
 8049629:	83 ec 0c             	sub    $0xc,%esp
 804962c:	68 9d 9c 04 08       	push   $0x8049c9d
 8049631:	e8 0a f2 ff ff       	call   8048840 <puts@plt>
 8049636:	e8 5d ff ff ff       	call   8049598 <explode_bomb>
 804963b:	83 ec 0c             	sub    $0xc,%esp
 804963e:	68 bb 9c 04 08       	push   $0x8049cbb
 8049643:	e8 e8 f1 ff ff       	call   8048830 <getenv@plt>
 8049648:	83 c4 10             	add    $0x10,%esp
 804964b:	85 c0                	test   %eax,%eax
 804964d:	74 0a                	je     8049659 <read_line+0x49>
 804964f:	83 ec 0c             	sub    $0xc,%esp
 8049652:	6a 00                	push   $0x0
 8049654:	e8 17 f2 ff ff       	call   8048870 <exit@plt>
 8049659:	a1 40 b6 04 08       	mov    0x804b640,%eax
 804965e:	a3 6c b6 04 08       	mov    %eax,0x804b66c
 8049663:	e8 57 f9 ff ff       	call   8048fbf <skip>
 8049668:	85 c0                	test   %eax,%eax
 804966a:	75 12                	jne    804967e <read_line+0x6e>
 804966c:	83 ec 0c             	sub    $0xc,%esp
 804966f:	68 9d 9c 04 08       	push   $0x8049c9d
 8049674:	e8 c7 f1 ff ff       	call   8048840 <puts@plt>
 8049679:	e8 1a ff ff ff       	call   8049598 <explode_bomb>
 804967e:	8b 1d 68 b6 04 08    	mov    0x804b668,%ebx
 8049684:	8d 34 9b             	lea    (%ebx,%ebx,4),%esi
 8049687:	c1 e6 04             	shl    $0x4,%esi
 804968a:	81 c6 80 b6 04 08    	add    $0x804b680,%esi
 8049690:	89 f7                	mov    %esi,%edi
 8049692:	b8 00 00 00 00       	mov    $0x0,%eax
 8049697:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804969c:	f2 ae                	repnz scas %es:(%edi),%al
 804969e:	f7 d1                	not    %ecx
 80496a0:	83 e9 01             	sub    $0x1,%ecx
 80496a3:	83 f9 4f             	cmp    $0x4f,%ecx
 80496a6:	75 12                	jne    80496ba <read_line+0xaa>
 80496a8:	83 ec 0c             	sub    $0xc,%esp
 80496ab:	68 c6 9c 04 08       	push   $0x8049cc6
 80496b0:	e8 8b f1 ff ff       	call   8048840 <puts@plt>
 80496b5:	e8 de fe ff ff       	call   8049598 <explode_bomb>
 80496ba:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
 80496bd:	c1 e0 04             	shl    $0x4,%eax
 80496c0:	c6 84 01 7f b6 04 08 	movb   $0x0,0x804b67f(%ecx,%eax,1)
 80496c7:	00 
 80496c8:	83 c3 01             	add    $0x1,%ebx
 80496cb:	89 1d 68 b6 04 08    	mov    %ebx,0x804b668
 80496d1:	89 f0                	mov    %esi,%eax
 80496d3:	5b                   	pop    %ebx
 80496d4:	5e                   	pop    %esi
 80496d5:	5f                   	pop    %edi
 80496d6:	c3                   	ret    

080496d7 <phase_defused>:
 80496d7:	81 ec 88 00 00 00    	sub    $0x88,%esp
 80496dd:	6a 01                	push   $0x1
 80496df:	e8 71 f9 ff ff       	call   8049055 <send_msg>
 80496e4:	83 c4 10             	add    $0x10,%esp
 80496e7:	83 3d 68 b6 04 08 03 	cmpl   $0x3,0x804b668
 80496ee:	0f 85 93 00 00 00    	jne    8049787 <phase_defused+0xb0>
 80496f4:	83 ec 0c             	sub    $0xc,%esp
 80496f7:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 80496fb:	50                   	push   %eax
 80496fc:	8d 44 24 18          	lea    0x18(%esp),%eax
 8049700:	50                   	push   %eax
 8049701:	8d 44 24 20          	lea    0x20(%esp),%eax
 8049705:	50                   	push   %eax
 8049706:	8d 44 24 28          	lea    0x28(%esp),%eax
 804970a:	50                   	push   %eax
 804970b:	8d 44 24 30          	lea    0x30(%esp),%eax
 804970f:	50                   	push   %eax
 8049710:	8d 44 24 38          	lea    0x38(%esp),%eax
 8049714:	50                   	push   %eax
 8049715:	8d 44 24 40          	lea    0x40(%esp),%eax
 8049719:	50                   	push   %eax
 804971a:	68 e1 9c 04 08       	push   $0x8049ce1
 804971f:	68 d0 b6 04 08       	push   $0x804b6d0
 8049724:	e8 87 f1 ff ff       	call   80488b0 <__isoc99_sscanf@plt>
 8049729:	83 c4 30             	add    $0x30,%esp
 804972c:	83 f8 07             	cmp    $0x7,%eax
 804972f:	75 3a                	jne    804976b <phase_defused+0x94>
 8049731:	83 ec 08             	sub    $0x8,%esp
 8049734:	68 f6 9c 04 08       	push   $0x8049cf6
 8049739:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 804973d:	50                   	push   %eax
 804973e:	e8 d9 f6 ff ff       	call   8048e1c <strings_not_equal>
 8049743:	83 c4 10             	add    $0x10,%esp
 8049746:	85 c0                	test   %eax,%eax
 8049748:	75 21                	jne    804976b <phase_defused+0x94>
 804974a:	83 ec 0c             	sub    $0xc,%esp
 804974d:	68 d8 99 04 08       	push   $0x80499d8
 8049752:	e8 e9 f0 ff ff       	call   8048840 <puts@plt>
 8049757:	c7 04 24 00 9a 04 08 	movl   $0x8049a00,(%esp)
 804975e:	e8 dd f0 ff ff       	call   8048840 <puts@plt>
 8049763:	e8 ae f5 ff ff       	call   8048d16 <secret_phase>
 8049768:	83 c4 10             	add    $0x10,%esp
 804976b:	83 ec 0c             	sub    $0xc,%esp
 804976e:	68 38 9a 04 08       	push   $0x8049a38
 8049773:	e8 c8 f0 ff ff       	call   8048840 <puts@plt>
 8049778:	c7 04 24 64 9a 04 08 	movl   $0x8049a64,(%esp)
 804977f:	e8 bc f0 ff ff       	call   8048840 <puts@plt>
 8049784:	83 c4 10             	add    $0x10,%esp
 8049787:	83 c4 7c             	add    $0x7c,%esp
 804978a:	c3                   	ret    
 804978b:	66 90                	xchg   %ax,%ax
 804978d:	66 90                	xchg   %ax,%ax
 804978f:	90                   	nop

08049790 <__libc_csu_init>:
 8049790:	55                   	push   %ebp
 8049791:	57                   	push   %edi
 8049792:	31 ff                	xor    %edi,%edi
 8049794:	56                   	push   %esi
 8049795:	53                   	push   %ebx
 8049796:	e8 f5 f1 ff ff       	call   8048990 <__x86.get_pc_thunk.bx>
 804979b:	81 c3 5d 19 00 00    	add    $0x195d,%ebx
 80497a1:	83 ec 1c             	sub    $0x1c,%esp
 80497a4:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 80497a8:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80497ae:	e8 61 ef ff ff       	call   8048714 <_init>
 80497b3:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80497b9:	29 c6                	sub    %eax,%esi
 80497bb:	c1 fe 02             	sar    $0x2,%esi
 80497be:	85 f6                	test   %esi,%esi
 80497c0:	74 27                	je     80497e9 <__libc_csu_init+0x59>
 80497c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80497c8:	8b 44 24 38          	mov    0x38(%esp),%eax
 80497cc:	89 2c 24             	mov    %ebp,(%esp)
 80497cf:	89 44 24 08          	mov    %eax,0x8(%esp)
 80497d3:	8b 44 24 34          	mov    0x34(%esp),%eax
 80497d7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80497db:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80497e2:	83 c7 01             	add    $0x1,%edi
 80497e5:	39 f7                	cmp    %esi,%edi
 80497e7:	75 df                	jne    80497c8 <__libc_csu_init+0x38>
 80497e9:	83 c4 1c             	add    $0x1c,%esp
 80497ec:	5b                   	pop    %ebx
 80497ed:	5e                   	pop    %esi
 80497ee:	5f                   	pop    %edi
 80497ef:	5d                   	pop    %ebp
 80497f0:	c3                   	ret    
 80497f1:	eb 0d                	jmp    8049800 <__libc_csu_fini>
 80497f3:	90                   	nop
 80497f4:	90                   	nop
 80497f5:	90                   	nop
 80497f6:	90                   	nop
 80497f7:	90                   	nop
 80497f8:	90                   	nop
 80497f9:	90                   	nop
 80497fa:	90                   	nop
 80497fb:	90                   	nop
 80497fc:	90                   	nop
 80497fd:	90                   	nop
 80497fe:	90                   	nop
 80497ff:	90                   	nop

08049800 <__libc_csu_fini>:
 8049800:	f3 c3                	repz ret 

Disassembly of section .fini:

08049804 <_fini>:
 8049804:	53                   	push   %ebx
 8049805:	83 ec 08             	sub    $0x8,%esp
 8049808:	e8 83 f1 ff ff       	call   8048990 <__x86.get_pc_thunk.bx>
 804980d:	81 c3 eb 18 00 00    	add    $0x18eb,%ebx
 8049813:	83 c4 08             	add    $0x8,%esp
 8049816:	5b                   	pop    %ebx
 8049817:	c3                   	ret    
