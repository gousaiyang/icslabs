
./bomb：     文件格式 elf32-i386


Disassembly of section .init:

08048734 <_init>:
 8048734:	53                   	push   %ebx
 8048735:	83 ec 08             	sub    $0x8,%esp
 8048738:	e8 83 02 00 00       	call   80489c0 <__x86.get_pc_thunk.bx>
 804873d:	81 c3 bb 29 00 00    	add    $0x29bb,%ebx
 8048743:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048749:	85 c0                	test   %eax,%eax
 804874b:	74 05                	je     8048752 <_init+0x1e>
 804874d:	e8 2e 01 00 00       	call   8048880 <__gmon_start__@plt>
 8048752:	83 c4 08             	add    $0x8,%esp
 8048755:	5b                   	pop    %ebx
 8048756:	c3                   	ret    

Disassembly of section .plt:

08048760 <cuserid@plt-0x10>:
 8048760:	ff 35 fc b0 04 08    	pushl  0x804b0fc
 8048766:	ff 25 00 b1 04 08    	jmp    *0x804b100
 804876c:	00 00                	add    %al,(%eax)
	...

08048770 <cuserid@plt>:
 8048770:	ff 25 04 b1 04 08    	jmp    *0x804b104
 8048776:	68 00 00 00 00       	push   $0x0
 804877b:	e9 e0 ff ff ff       	jmp    8048760 <_init+0x2c>

08048780 <printf@plt>:
 8048780:	ff 25 08 b1 04 08    	jmp    *0x804b108
 8048786:	68 08 00 00 00       	push   $0x8
 804878b:	e9 d0 ff ff ff       	jmp    8048760 <_init+0x2c>

08048790 <fflush@plt>:
 8048790:	ff 25 0c b1 04 08    	jmp    *0x804b10c
 8048796:	68 10 00 00 00       	push   $0x10
 804879b:	e9 c0 ff ff ff       	jmp    8048760 <_init+0x2c>

080487a0 <dup@plt>:
 80487a0:	ff 25 10 b1 04 08    	jmp    *0x804b110
 80487a6:	68 18 00 00 00       	push   $0x18
 80487ab:	e9 b0 ff ff ff       	jmp    8048760 <_init+0x2c>

080487b0 <inet_pton@plt>:
 80487b0:	ff 25 14 b1 04 08    	jmp    *0x804b114
 80487b6:	68 20 00 00 00       	push   $0x20
 80487bb:	e9 a0 ff ff ff       	jmp    8048760 <_init+0x2c>

080487c0 <fgets@plt>:
 80487c0:	ff 25 18 b1 04 08    	jmp    *0x804b118
 80487c6:	68 28 00 00 00       	push   $0x28
 80487cb:	e9 90 ff ff ff       	jmp    8048760 <_init+0x2c>

080487d0 <fclose@plt>:
 80487d0:	ff 25 1c b1 04 08    	jmp    *0x804b11c
 80487d6:	68 30 00 00 00       	push   $0x30
 80487db:	e9 80 ff ff ff       	jmp    8048760 <_init+0x2c>

080487e0 <signal@plt>:
 80487e0:	ff 25 20 b1 04 08    	jmp    *0x804b120
 80487e6:	68 38 00 00 00       	push   $0x38
 80487eb:	e9 70 ff ff ff       	jmp    8048760 <_init+0x2c>

080487f0 <sleep@plt>:
 80487f0:	ff 25 24 b1 04 08    	jmp    *0x804b124
 80487f6:	68 40 00 00 00       	push   $0x40
 80487fb:	e9 60 ff ff ff       	jmp    8048760 <_init+0x2c>

08048800 <rewind@plt>:
 8048800:	ff 25 28 b1 04 08    	jmp    *0x804b128
 8048806:	68 48 00 00 00       	push   $0x48
 804880b:	e9 50 ff ff ff       	jmp    8048760 <_init+0x2c>

08048810 <fwrite@plt>:
 8048810:	ff 25 2c b1 04 08    	jmp    *0x804b12c
 8048816:	68 50 00 00 00       	push   $0x50
 804881b:	e9 40 ff ff ff       	jmp    8048760 <_init+0x2c>

08048820 <bcopy@plt>:
 8048820:	ff 25 30 b1 04 08    	jmp    *0x804b130
 8048826:	68 58 00 00 00       	push   $0x58
 804882b:	e9 30 ff ff ff       	jmp    8048760 <_init+0x2c>

08048830 <strcat@plt>:
 8048830:	ff 25 34 b1 04 08    	jmp    *0x804b134
 8048836:	68 60 00 00 00       	push   $0x60
 804883b:	e9 20 ff ff ff       	jmp    8048760 <_init+0x2c>

08048840 <strcpy@plt>:
 8048840:	ff 25 38 b1 04 08    	jmp    *0x804b138
 8048846:	68 68 00 00 00       	push   $0x68
 804884b:	e9 10 ff ff ff       	jmp    8048760 <_init+0x2c>

08048850 <getenv@plt>:
 8048850:	ff 25 3c b1 04 08    	jmp    *0x804b13c
 8048856:	68 70 00 00 00       	push   $0x70
 804885b:	e9 00 ff ff ff       	jmp    8048760 <_init+0x2c>

08048860 <puts@plt>:
 8048860:	ff 25 40 b1 04 08    	jmp    *0x804b140
 8048866:	68 78 00 00 00       	push   $0x78
 804886b:	e9 f0 fe ff ff       	jmp    8048760 <_init+0x2c>

08048870 <system@plt>:
 8048870:	ff 25 44 b1 04 08    	jmp    *0x804b144
 8048876:	68 80 00 00 00       	push   $0x80
 804887b:	e9 e0 fe ff ff       	jmp    8048760 <_init+0x2c>

08048880 <__gmon_start__@plt>:
 8048880:	ff 25 48 b1 04 08    	jmp    *0x804b148
 8048886:	68 88 00 00 00       	push   $0x88
 804888b:	e9 d0 fe ff ff       	jmp    8048760 <_init+0x2c>

08048890 <exit@plt>:
 8048890:	ff 25 4c b1 04 08    	jmp    *0x804b14c
 8048896:	68 90 00 00 00       	push   $0x90
 804889b:	e9 c0 fe ff ff       	jmp    8048760 <_init+0x2c>

080488a0 <__libc_start_main@plt>:
 80488a0:	ff 25 50 b1 04 08    	jmp    *0x804b150
 80488a6:	68 98 00 00 00       	push   $0x98
 80488ab:	e9 b0 fe ff ff       	jmp    8048760 <_init+0x2c>

080488b0 <fprintf@plt>:
 80488b0:	ff 25 54 b1 04 08    	jmp    *0x804b154
 80488b6:	68 a0 00 00 00       	push   $0xa0
 80488bb:	e9 a0 fe ff ff       	jmp    8048760 <_init+0x2c>

080488c0 <write@plt>:
 80488c0:	ff 25 58 b1 04 08    	jmp    *0x804b158
 80488c6:	68 a8 00 00 00       	push   $0xa8
 80488cb:	e9 90 fe ff ff       	jmp    8048760 <_init+0x2c>

080488d0 <__isoc99_sscanf@plt>:
 80488d0:	ff 25 5c b1 04 08    	jmp    *0x804b15c
 80488d6:	68 b0 00 00 00       	push   $0xb0
 80488db:	e9 80 fe ff ff       	jmp    8048760 <_init+0x2c>

080488e0 <fopen@plt>:
 80488e0:	ff 25 60 b1 04 08    	jmp    *0x804b160
 80488e6:	68 b8 00 00 00       	push   $0xb8
 80488eb:	e9 70 fe ff ff       	jmp    8048760 <_init+0x2c>

080488f0 <__errno_location@plt>:
 80488f0:	ff 25 64 b1 04 08    	jmp    *0x804b164
 80488f6:	68 c0 00 00 00       	push   $0xc0
 80488fb:	e9 60 fe ff ff       	jmp    8048760 <_init+0x2c>

08048900 <fputc@plt>:
 8048900:	ff 25 68 b1 04 08    	jmp    *0x804b168
 8048906:	68 c8 00 00 00       	push   $0xc8
 804890b:	e9 50 fe ff ff       	jmp    8048760 <_init+0x2c>

08048910 <sprintf@plt>:
 8048910:	ff 25 6c b1 04 08    	jmp    *0x804b16c
 8048916:	68 d0 00 00 00       	push   $0xd0
 804891b:	e9 40 fe ff ff       	jmp    8048760 <_init+0x2c>

08048920 <tmpfile@plt>:
 8048920:	ff 25 70 b1 04 08    	jmp    *0x804b170
 8048926:	68 d8 00 00 00       	push   $0xd8
 804892b:	e9 30 fe ff ff       	jmp    8048760 <_init+0x2c>

08048930 <socket@plt>:
 8048930:	ff 25 74 b1 04 08    	jmp    *0x804b174
 8048936:	68 e0 00 00 00       	push   $0xe0
 804893b:	e9 20 fe ff ff       	jmp    8048760 <_init+0x2c>

08048940 <gethostbyname@plt>:
 8048940:	ff 25 78 b1 04 08    	jmp    *0x804b178
 8048946:	68 e8 00 00 00       	push   $0xe8
 804894b:	e9 10 fe ff ff       	jmp    8048760 <_init+0x2c>

08048950 <strtol@plt>:
 8048950:	ff 25 7c b1 04 08    	jmp    *0x804b17c
 8048956:	68 f0 00 00 00       	push   $0xf0
 804895b:	e9 00 fe ff ff       	jmp    8048760 <_init+0x2c>

08048960 <connect@plt>:
 8048960:	ff 25 80 b1 04 08    	jmp    *0x804b180
 8048966:	68 f8 00 00 00       	push   $0xf8
 804896b:	e9 f0 fd ff ff       	jmp    8048760 <_init+0x2c>

08048970 <close@plt>:
 8048970:	ff 25 84 b1 04 08    	jmp    *0x804b184
 8048976:	68 00 01 00 00       	push   $0x100
 804897b:	e9 e0 fd ff ff       	jmp    8048760 <_init+0x2c>

08048980 <__ctype_b_loc@plt>:
 8048980:	ff 25 88 b1 04 08    	jmp    *0x804b188
 8048986:	68 08 01 00 00       	push   $0x108
 804898b:	e9 d0 fd ff ff       	jmp    8048760 <_init+0x2c>

Disassembly of section .text:

08048990 <_start>:
 8048990:	31 ed                	xor    %ebp,%ebp
 8048992:	5e                   	pop    %esi
 8048993:	89 e1                	mov    %esp,%ecx
 8048995:	83 e4 f0             	and    $0xfffffff0,%esp
 8048998:	50                   	push   %eax
 8048999:	54                   	push   %esp
 804899a:	52                   	push   %edx
 804899b:	68 50 99 04 08       	push   $0x8049950
 80489a0:	68 e0 98 04 08       	push   $0x80498e0
 80489a5:	51                   	push   %ecx
 80489a6:	56                   	push   %esi
 80489a7:	68 8b 8a 04 08       	push   $0x8048a8b
 80489ac:	e8 ef fe ff ff       	call   80488a0 <__libc_start_main@plt>
 80489b1:	f4                   	hlt    
 80489b2:	66 90                	xchg   %ax,%ax
 80489b4:	66 90                	xchg   %ax,%ax
 80489b6:	66 90                	xchg   %ax,%ax
 80489b8:	66 90                	xchg   %ax,%ax
 80489ba:	66 90                	xchg   %ax,%ax
 80489bc:	66 90                	xchg   %ax,%ax
 80489be:	66 90                	xchg   %ax,%ax

080489c0 <__x86.get_pc_thunk.bx>:
 80489c0:	8b 1c 24             	mov    (%esp),%ebx
 80489c3:	c3                   	ret    
 80489c4:	66 90                	xchg   %ax,%ax
 80489c6:	66 90                	xchg   %ax,%ax
 80489c8:	66 90                	xchg   %ax,%ax
 80489ca:	66 90                	xchg   %ax,%ax
 80489cc:	66 90                	xchg   %ax,%ax
 80489ce:	66 90                	xchg   %ax,%ax

080489d0 <deregister_tm_clones>:
 80489d0:	b8 47 b7 04 08       	mov    $0x804b747,%eax
 80489d5:	2d 44 b7 04 08       	sub    $0x804b744,%eax
 80489da:	83 f8 06             	cmp    $0x6,%eax
 80489dd:	76 1a                	jbe    80489f9 <deregister_tm_clones+0x29>
 80489df:	b8 00 00 00 00       	mov    $0x0,%eax
 80489e4:	85 c0                	test   %eax,%eax
 80489e6:	74 11                	je     80489f9 <deregister_tm_clones+0x29>
 80489e8:	55                   	push   %ebp
 80489e9:	89 e5                	mov    %esp,%ebp
 80489eb:	83 ec 14             	sub    $0x14,%esp
 80489ee:	68 44 b7 04 08       	push   $0x804b744
 80489f3:	ff d0                	call   *%eax
 80489f5:	83 c4 10             	add    $0x10,%esp
 80489f8:	c9                   	leave  
 80489f9:	f3 c3                	repz ret 
 80489fb:	90                   	nop
 80489fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048a00 <register_tm_clones>:
 8048a00:	b8 44 b7 04 08       	mov    $0x804b744,%eax
 8048a05:	2d 44 b7 04 08       	sub    $0x804b744,%eax
 8048a0a:	c1 f8 02             	sar    $0x2,%eax
 8048a0d:	89 c2                	mov    %eax,%edx
 8048a0f:	c1 ea 1f             	shr    $0x1f,%edx
 8048a12:	01 d0                	add    %edx,%eax
 8048a14:	d1 f8                	sar    %eax
 8048a16:	74 1b                	je     8048a33 <register_tm_clones+0x33>
 8048a18:	ba 00 00 00 00       	mov    $0x0,%edx
 8048a1d:	85 d2                	test   %edx,%edx
 8048a1f:	74 12                	je     8048a33 <register_tm_clones+0x33>
 8048a21:	55                   	push   %ebp
 8048a22:	89 e5                	mov    %esp,%ebp
 8048a24:	83 ec 10             	sub    $0x10,%esp
 8048a27:	50                   	push   %eax
 8048a28:	68 44 b7 04 08       	push   $0x804b744
 8048a2d:	ff d2                	call   *%edx
 8048a2f:	83 c4 10             	add    $0x10,%esp
 8048a32:	c9                   	leave  
 8048a33:	f3 c3                	repz ret 
 8048a35:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048a39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048a40 <__do_global_dtors_aux>:
 8048a40:	80 3d a4 b7 04 08 00 	cmpb   $0x0,0x804b7a4
 8048a47:	75 13                	jne    8048a5c <__do_global_dtors_aux+0x1c>
 8048a49:	55                   	push   %ebp
 8048a4a:	89 e5                	mov    %esp,%ebp
 8048a4c:	83 ec 08             	sub    $0x8,%esp
 8048a4f:	e8 7c ff ff ff       	call   80489d0 <deregister_tm_clones>
 8048a54:	c6 05 a4 b7 04 08 01 	movb   $0x1,0x804b7a4
 8048a5b:	c9                   	leave  
 8048a5c:	f3 c3                	repz ret 
 8048a5e:	66 90                	xchg   %ax,%ax

08048a60 <frame_dummy>:
 8048a60:	b8 08 b0 04 08       	mov    $0x804b008,%eax
 8048a65:	8b 10                	mov    (%eax),%edx
 8048a67:	85 d2                	test   %edx,%edx
 8048a69:	75 05                	jne    8048a70 <frame_dummy+0x10>
 8048a6b:	eb 93                	jmp    8048a00 <register_tm_clones>
 8048a6d:	8d 76 00             	lea    0x0(%esi),%esi
 8048a70:	ba 00 00 00 00       	mov    $0x0,%edx
 8048a75:	85 d2                	test   %edx,%edx
 8048a77:	74 f2                	je     8048a6b <frame_dummy+0xb>
 8048a79:	55                   	push   %ebp
 8048a7a:	89 e5                	mov    %esp,%ebp
 8048a7c:	83 ec 14             	sub    $0x14,%esp
 8048a7f:	50                   	push   %eax
 8048a80:	ff d2                	call   *%edx
 8048a82:	83 c4 10             	add    $0x10,%esp
 8048a85:	c9                   	leave  
 8048a86:	e9 75 ff ff ff       	jmp    8048a00 <register_tm_clones>

08048a8b <main>:
 8048a8b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048a8f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048a92:	ff 71 fc             	pushl  -0x4(%ecx)
 8048a95:	55                   	push   %ebp
 8048a96:	89 e5                	mov    %esp,%ebp
 8048a98:	53                   	push   %ebx
 8048a99:	51                   	push   %ecx
 8048a9a:	8b 01                	mov    (%ecx),%eax
 8048a9c:	8b 59 04             	mov    0x4(%ecx),%ebx
 8048a9f:	83 f8 01             	cmp    $0x1,%eax
 8048aa2:	75 0c                	jne    8048ab0 <main+0x25>
 8048aa4:	a1 80 b7 04 08       	mov    0x804b780,%eax
 8048aa9:	a3 ac b7 04 08       	mov    %eax,0x804b7ac
 8048aae:	eb 5a                	jmp    8048b0a <main+0x7f>
 8048ab0:	83 f8 02             	cmp    $0x2,%eax
 8048ab3:	75 3a                	jne    8048aef <main+0x64>
 8048ab5:	83 ec 08             	sub    $0x8,%esp
 8048ab8:	68 cf 9d 04 08       	push   $0x8049dcf
 8048abd:	ff 73 04             	pushl  0x4(%ebx)
 8048ac0:	e8 1b fe ff ff       	call   80488e0 <fopen@plt>
 8048ac5:	a3 ac b7 04 08       	mov    %eax,0x804b7ac
 8048aca:	83 c4 10             	add    $0x10,%esp
 8048acd:	85 c0                	test   %eax,%eax
 8048acf:	75 39                	jne    8048b0a <main+0x7f>
 8048ad1:	83 ec 04             	sub    $0x4,%esp
 8048ad4:	ff 73 04             	pushl  0x4(%ebx)
 8048ad7:	ff 33                	pushl  (%ebx)
 8048ad9:	68 88 99 04 08       	push   $0x8049988
 8048ade:	e8 9d fc ff ff       	call   8048780 <printf@plt>
 8048ae3:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048aea:	e8 a1 fd ff ff       	call   8048890 <exit@plt>
 8048aef:	83 ec 08             	sub    $0x8,%esp
 8048af2:	ff 33                	pushl  (%ebx)
 8048af4:	68 a5 99 04 08       	push   $0x80499a5
 8048af9:	e8 82 fc ff ff       	call   8048780 <printf@plt>
 8048afe:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048b05:	e8 86 fd ff ff       	call   8048890 <exit@plt>
 8048b0a:	e8 c5 05 00 00       	call   80490d4 <initialize_bomb>
 8048b0f:	83 ec 0c             	sub    $0xc,%esp
 8048b12:	68 0c 9a 04 08       	push   $0x8049a0c
 8048b17:	e8 44 fd ff ff       	call   8048860 <puts@plt>
 8048b1c:	c7 04 24 48 9a 04 08 	movl   $0x8049a48,(%esp)
 8048b23:	e8 38 fd ff ff       	call   8048860 <puts@plt>
 8048b28:	e8 5a 0c 00 00       	call   8049787 <read_line>
 8048b2d:	89 04 24             	mov    %eax,(%esp)
 8048b30:	e8 ad 00 00 00       	call   8048be2 <phase_1>
 8048b35:	e8 14 0d 00 00       	call   804984e <phase_defused>
 8048b3a:	c7 04 24 74 9a 04 08 	movl   $0x8049a74,(%esp)
 8048b41:	e8 1a fd ff ff       	call   8048860 <puts@plt>
 8048b46:	e8 3c 0c 00 00       	call   8049787 <read_line>
 8048b4b:	89 04 24             	mov    %eax,(%esp)
 8048b4e:	e8 b0 00 00 00       	call   8048c03 <phase_2>
 8048b53:	e8 f6 0c 00 00       	call   804984e <phase_defused>
 8048b58:	c7 04 24 bf 99 04 08 	movl   $0x80499bf,(%esp)
 8048b5f:	e8 fc fc ff ff       	call   8048860 <puts@plt>
 8048b64:	e8 1e 0c 00 00       	call   8049787 <read_line>
 8048b69:	89 04 24             	mov    %eax,(%esp)
 8048b6c:	e8 db 00 00 00       	call   8048c4c <phase_3>
 8048b71:	e8 d8 0c 00 00       	call   804984e <phase_defused>
 8048b76:	c7 04 24 dd 99 04 08 	movl   $0x80499dd,(%esp)
 8048b7d:	e8 de fc ff ff       	call   8048860 <puts@plt>
 8048b82:	e8 00 0c 00 00       	call   8049787 <read_line>
 8048b87:	89 04 24             	mov    %eax,(%esp)
 8048b8a:	e8 71 01 00 00       	call   8048d00 <phase_4>
 8048b8f:	e8 ba 0c 00 00       	call   804984e <phase_defused>
 8048b94:	c7 04 24 a0 9a 04 08 	movl   $0x8049aa0,(%esp)
 8048b9b:	e8 c0 fc ff ff       	call   8048860 <puts@plt>
 8048ba0:	e8 e2 0b 00 00       	call   8049787 <read_line>
 8048ba5:	89 04 24             	mov    %eax,(%esp)
 8048ba8:	e8 9c 01 00 00       	call   8048d49 <phase_5>
 8048bad:	e8 9c 0c 00 00       	call   804984e <phase_defused>
 8048bb2:	c7 04 24 ec 99 04 08 	movl   $0x80499ec,(%esp)
 8048bb9:	e8 a2 fc ff ff       	call   8048860 <puts@plt>
 8048bbe:	e8 c4 0b 00 00       	call   8049787 <read_line>
 8048bc3:	89 04 24             	mov    %eax,(%esp)
 8048bc6:	e8 42 02 00 00       	call   8048e0d <phase_6>
 8048bcb:	e8 7e 0c 00 00       	call   804984e <phase_defused>
 8048bd0:	83 c4 10             	add    $0x10,%esp
 8048bd3:	b8 00 00 00 00       	mov    $0x0,%eax
 8048bd8:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048bdb:	59                   	pop    %ecx
 8048bdc:	5b                   	pop    %ebx
 8048bdd:	5d                   	pop    %ebp
 8048bde:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048be1:	c3                   	ret    

08048be2 <phase_1>:
 8048be2:	83 ec 14             	sub    $0x14,%esp
 8048be5:	68 c4 9a 04 08       	push   $0x8049ac4
 8048bea:	ff 74 24 1c          	pushl  0x1c(%esp)
 8048bee:	e8 a0 03 00 00       	call   8048f93 <strings_not_equal>
 8048bf3:	83 c4 10             	add    $0x10,%esp
 8048bf6:	85 c0                	test   %eax,%eax
 8048bf8:	74 05                	je     8048bff <phase_1+0x1d>
 8048bfa:	e8 10 0b 00 00       	call   804970f <explode_bomb>
 8048bff:	83 c4 0c             	add    $0xc,%esp
 8048c02:	c3                   	ret    

08048c03 <phase_2>:
 8048c03:	55                   	push   %ebp
 8048c04:	57                   	push   %edi
 8048c05:	56                   	push   %esi
 8048c06:	53                   	push   %ebx
 8048c07:	83 ec 34             	sub    $0x34,%esp
 8048c0a:	8d 5c 24 10          	lea    0x10(%esp),%ebx
 8048c0e:	53                   	push   %ebx
 8048c0f:	ff 74 24 4c          	pushl  0x4c(%esp)
 8048c13:	e8 34 0b 00 00       	call   804974c <read_six_numbers>
 8048c18:	8d 6c 24 24          	lea    0x24(%esp),%ebp
 8048c1c:	83 c4 10             	add    $0x10,%esp
 8048c1f:	be 00 00 00 00       	mov    $0x0,%esi
 8048c24:	89 df                	mov    %ebx,%edi
 8048c26:	8b 43 0c             	mov    0xc(%ebx),%eax
 8048c29:	39 03                	cmp    %eax,(%ebx)
 8048c2b:	74 05                	je     8048c32 <phase_2+0x2f>
 8048c2d:	e8 dd 0a 00 00       	call   804970f <explode_bomb>
 8048c32:	03 37                	add    (%edi),%esi
 8048c34:	83 c3 04             	add    $0x4,%ebx
 8048c37:	39 eb                	cmp    %ebp,%ebx
 8048c39:	75 e9                	jne    8048c24 <phase_2+0x21>
 8048c3b:	85 f6                	test   %esi,%esi
 8048c3d:	75 05                	jne    8048c44 <phase_2+0x41>
 8048c3f:	e8 cb 0a 00 00       	call   804970f <explode_bomb>
 8048c44:	83 c4 2c             	add    $0x2c,%esp
 8048c47:	5b                   	pop    %ebx
 8048c48:	5e                   	pop    %esi
 8048c49:	5f                   	pop    %edi
 8048c4a:	5d                   	pop    %ebp
 8048c4b:	c3                   	ret    

08048c4c <phase_3>:
 8048c4c:	83 ec 1c             	sub    $0x1c,%esp
 8048c4f:	8d 44 24 08          	lea    0x8(%esp),%eax
 8048c53:	50                   	push   %eax
 8048c54:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048c58:	50                   	push   %eax
 8048c59:	68 d8 9e 04 08       	push   $0x8049ed8
 8048c5e:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048c62:	e8 69 fc ff ff       	call   80488d0 <__isoc99_sscanf@plt>
 8048c67:	83 c4 10             	add    $0x10,%esp
 8048c6a:	83 f8 01             	cmp    $0x1,%eax
 8048c6d:	7f 05                	jg     8048c74 <phase_3+0x28>
 8048c6f:	e8 9b 0a 00 00       	call   804970f <explode_bomb>
 8048c74:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%esp)
 8048c79:	77 3c                	ja     8048cb7 <phase_3+0x6b>
 8048c7b:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048c7f:	ff 24 85 40 9b 04 08 	jmp    *0x8049b40(,%eax,4)
 8048c86:	b8 a0 00 00 00       	mov    $0xa0,%eax
 8048c8b:	eb 3b                	jmp    8048cc8 <phase_3+0x7c>
 8048c8d:	b8 5f 01 00 00       	mov    $0x15f,%eax
 8048c92:	eb 34                	jmp    8048cc8 <phase_3+0x7c>
 8048c94:	b8 d4 02 00 00       	mov    $0x2d4,%eax
 8048c99:	eb 2d                	jmp    8048cc8 <phase_3+0x7c>
 8048c9b:	b8 b3 02 00 00       	mov    $0x2b3,%eax
 8048ca0:	eb 26                	jmp    8048cc8 <phase_3+0x7c>
 8048ca2:	b8 3a 03 00 00       	mov    $0x33a,%eax
 8048ca7:	eb 1f                	jmp    8048cc8 <phase_3+0x7c>
 8048ca9:	b8 b2 03 00 00       	mov    $0x3b2,%eax
 8048cae:	eb 18                	jmp    8048cc8 <phase_3+0x7c>
 8048cb0:	b8 f9 00 00 00       	mov    $0xf9,%eax
 8048cb5:	eb 11                	jmp    8048cc8 <phase_3+0x7c>
 8048cb7:	e8 53 0a 00 00       	call   804970f <explode_bomb>
 8048cbc:	b8 00 00 00 00       	mov    $0x0,%eax
 8048cc1:	eb 05                	jmp    8048cc8 <phase_3+0x7c>
 8048cc3:	b8 47 02 00 00       	mov    $0x247,%eax
 8048cc8:	3b 44 24 08          	cmp    0x8(%esp),%eax
 8048ccc:	74 05                	je     8048cd3 <phase_3+0x87>
 8048cce:	e8 3c 0a 00 00       	call   804970f <explode_bomb>
 8048cd3:	83 c4 1c             	add    $0x1c,%esp
 8048cd6:	c3                   	ret    

08048cd7 <func4>:
 8048cd7:	53                   	push   %ebx
 8048cd8:	83 ec 08             	sub    $0x8,%esp
 8048cdb:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8048cdf:	b8 01 00 00 00       	mov    $0x1,%eax
 8048ce4:	83 fb 01             	cmp    $0x1,%ebx
 8048ce7:	7e 12                	jle    8048cfb <func4+0x24>
 8048ce9:	83 ec 0c             	sub    $0xc,%esp
 8048cec:	8d 43 ff             	lea    -0x1(%ebx),%eax
 8048cef:	50                   	push   %eax
 8048cf0:	e8 e2 ff ff ff       	call   8048cd7 <func4>
 8048cf5:	83 c4 10             	add    $0x10,%esp
 8048cf8:	0f af c3             	imul   %ebx,%eax
 8048cfb:	83 c4 08             	add    $0x8,%esp
 8048cfe:	5b                   	pop    %ebx
 8048cff:	c3                   	ret    

08048d00 <phase_4>:
 8048d00:	83 ec 20             	sub    $0x20,%esp
 8048d03:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048d07:	50                   	push   %eax
 8048d08:	68 db 9e 04 08       	push   $0x8049edb
 8048d0d:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048d11:	e8 ba fb ff ff       	call   80488d0 <__isoc99_sscanf@plt>
 8048d16:	83 c4 10             	add    $0x10,%esp
 8048d19:	83 f8 01             	cmp    $0x1,%eax
 8048d1c:	75 07                	jne    8048d25 <phase_4+0x25>
 8048d1e:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
 8048d23:	7f 05                	jg     8048d2a <phase_4+0x2a>
 8048d25:	e8 e5 09 00 00       	call   804970f <explode_bomb>
 8048d2a:	83 ec 0c             	sub    $0xc,%esp
 8048d2d:	ff 74 24 18          	pushl  0x18(%esp)
 8048d31:	e8 a1 ff ff ff       	call   8048cd7 <func4>
 8048d36:	83 c4 10             	add    $0x10,%esp
 8048d39:	3d 80 9d 00 00       	cmp    $0x9d80,%eax
 8048d3e:	74 05                	je     8048d45 <phase_4+0x45>
 8048d40:	e8 ca 09 00 00       	call   804970f <explode_bomb>
 8048d45:	83 c4 1c             	add    $0x1c,%esp
 8048d48:	c3                   	ret    

08048d49 <phase_5>:
 8048d49:	83 ec 1c             	sub    $0x1c,%esp
 8048d4c:	8d 44 24 08          	lea    0x8(%esp),%eax
 8048d50:	50                   	push   %eax
 8048d51:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048d55:	50                   	push   %eax
 8048d56:	68 d8 9e 04 08       	push   $0x8049ed8
 8048d5b:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048d5f:	e8 6c fb ff ff       	call   80488d0 <__isoc99_sscanf@plt>
 8048d64:	83 c4 10             	add    $0x10,%esp
 8048d67:	83 f8 01             	cmp    $0x1,%eax
 8048d6a:	7f 05                	jg     8048d71 <phase_5+0x28>
 8048d6c:	e8 9e 09 00 00       	call   804970f <explode_bomb>
 8048d71:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048d75:	83 e0 0f             	and    $0xf,%eax
 8048d78:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048d7c:	83 f8 0f             	cmp    $0xf,%eax
 8048d7f:	74 2e                	je     8048daf <phase_5+0x66>
 8048d81:	b9 00 00 00 00       	mov    $0x0,%ecx
 8048d86:	ba 00 00 00 00       	mov    $0x0,%edx
 8048d8b:	83 c2 01             	add    $0x1,%edx
 8048d8e:	8b 04 85 80 9b 04 08 	mov    0x8049b80(,%eax,4),%eax
 8048d95:	01 c1                	add    %eax,%ecx
 8048d97:	83 f8 0f             	cmp    $0xf,%eax
 8048d9a:	75 ef                	jne    8048d8b <phase_5+0x42>
 8048d9c:	c7 44 24 0c 0f 00 00 	movl   $0xf,0xc(%esp)
 8048da3:	00 
 8048da4:	83 fa 09             	cmp    $0x9,%edx
 8048da7:	75 06                	jne    8048daf <phase_5+0x66>
 8048da9:	3b 4c 24 08          	cmp    0x8(%esp),%ecx
 8048dad:	74 05                	je     8048db4 <phase_5+0x6b>
 8048daf:	e8 5b 09 00 00       	call   804970f <explode_bomb>
 8048db4:	83 c4 1c             	add    $0x1c,%esp
 8048db7:	c3                   	ret    

08048db8 <fun6>:
 8048db8:	56                   	push   %esi
 8048db9:	53                   	push   %ebx
 8048dba:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048dbe:	8b 70 08             	mov    0x8(%eax),%esi
 8048dc1:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8048dc8:	85 f6                	test   %esi,%esi
 8048dca:	75 2c                	jne    8048df8 <fun6+0x40>
 8048dcc:	eb 3c                	jmp    8048e0a <fun6+0x52>
 8048dce:	89 d1                	mov    %edx,%ecx
 8048dd0:	8b 51 08             	mov    0x8(%ecx),%edx
 8048dd3:	85 d2                	test   %edx,%edx
 8048dd5:	74 04                	je     8048ddb <fun6+0x23>
 8048dd7:	39 1a                	cmp    %ebx,(%edx)
 8048dd9:	7f f3                	jg     8048dce <fun6+0x16>
 8048ddb:	39 d1                	cmp    %edx,%ecx
 8048ddd:	74 05                	je     8048de4 <fun6+0x2c>
 8048ddf:	89 71 08             	mov    %esi,0x8(%ecx)
 8048de2:	eb 08                	jmp    8048dec <fun6+0x34>
 8048de4:	89 f0                	mov    %esi,%eax
 8048de6:	eb 04                	jmp    8048dec <fun6+0x34>
 8048de8:	89 c2                	mov    %eax,%edx
 8048dea:	89 f0                	mov    %esi,%eax
 8048dec:	8b 4e 08             	mov    0x8(%esi),%ecx
 8048def:	89 56 08             	mov    %edx,0x8(%esi)
 8048df2:	85 c9                	test   %ecx,%ecx
 8048df4:	74 14                	je     8048e0a <fun6+0x52>
 8048df6:	89 ce                	mov    %ecx,%esi
 8048df8:	85 c0                	test   %eax,%eax
 8048dfa:	74 ec                	je     8048de8 <fun6+0x30>
 8048dfc:	8b 1e                	mov    (%esi),%ebx
 8048dfe:	89 c1                	mov    %eax,%ecx
 8048e00:	39 18                	cmp    %ebx,(%eax)
 8048e02:	7f cc                	jg     8048dd0 <fun6+0x18>
 8048e04:	89 c2                	mov    %eax,%edx
 8048e06:	89 f0                	mov    %esi,%eax
 8048e08:	eb e2                	jmp    8048dec <fun6+0x34>
 8048e0a:	5b                   	pop    %ebx
 8048e0b:	5e                   	pop    %esi
 8048e0c:	c3                   	ret    

08048e0d <phase_6>:
 8048e0d:	83 ec 10             	sub    $0x10,%esp
 8048e10:	6a 0a                	push   $0xa
 8048e12:	6a 00                	push   $0x0
 8048e14:	ff 74 24 1c          	pushl  0x1c(%esp)
 8048e18:	e8 33 fb ff ff       	call   8048950 <strtol@plt>
 8048e1d:	a3 b4 b2 04 08       	mov    %eax,0x804b2b4
 8048e22:	c7 04 24 b4 b2 04 08 	movl   $0x804b2b4,(%esp)
 8048e29:	e8 8a ff ff ff       	call   8048db8 <fun6>
 8048e2e:	8b 40 08             	mov    0x8(%eax),%eax
 8048e31:	8b 40 08             	mov    0x8(%eax),%eax
 8048e34:	8b 40 08             	mov    0x8(%eax),%eax
 8048e37:	8b 40 08             	mov    0x8(%eax),%eax
 8048e3a:	8b 40 08             	mov    0x8(%eax),%eax
 8048e3d:	83 c4 10             	add    $0x10,%esp
 8048e40:	8b 15 b4 b2 04 08    	mov    0x804b2b4,%edx
 8048e46:	39 10                	cmp    %edx,(%eax)
 8048e48:	74 05                	je     8048e4f <phase_6+0x42>
 8048e4a:	e8 c0 08 00 00       	call   804970f <explode_bomb>
 8048e4f:	83 c4 0c             	add    $0xc,%esp
 8048e52:	c3                   	ret    

08048e53 <fun7>:
 8048e53:	53                   	push   %ebx
 8048e54:	83 ec 08             	sub    $0x8,%esp
 8048e57:	8b 54 24 10          	mov    0x10(%esp),%edx
 8048e5b:	8b 4c 24 14          	mov    0x14(%esp),%ecx
 8048e5f:	85 d2                	test   %edx,%edx
 8048e61:	74 37                	je     8048e9a <fun7+0x47>
 8048e63:	8b 1a                	mov    (%edx),%ebx
 8048e65:	39 cb                	cmp    %ecx,%ebx
 8048e67:	7e 13                	jle    8048e7c <fun7+0x29>
 8048e69:	83 ec 08             	sub    $0x8,%esp
 8048e6c:	51                   	push   %ecx
 8048e6d:	ff 72 04             	pushl  0x4(%edx)
 8048e70:	e8 de ff ff ff       	call   8048e53 <fun7>
 8048e75:	83 c4 10             	add    $0x10,%esp
 8048e78:	01 c0                	add    %eax,%eax
 8048e7a:	eb 23                	jmp    8048e9f <fun7+0x4c>
 8048e7c:	b8 00 00 00 00       	mov    $0x0,%eax
 8048e81:	39 cb                	cmp    %ecx,%ebx
 8048e83:	74 1a                	je     8048e9f <fun7+0x4c>
 8048e85:	83 ec 08             	sub    $0x8,%esp
 8048e88:	51                   	push   %ecx
 8048e89:	ff 72 08             	pushl  0x8(%edx)
 8048e8c:	e8 c2 ff ff ff       	call   8048e53 <fun7>
 8048e91:	83 c4 10             	add    $0x10,%esp
 8048e94:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
 8048e98:	eb 05                	jmp    8048e9f <fun7+0x4c>
 8048e9a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8048e9f:	83 c4 08             	add    $0x8,%esp
 8048ea2:	5b                   	pop    %ebx
 8048ea3:	c3                   	ret    

08048ea4 <secret_phase>:
 8048ea4:	53                   	push   %ebx
 8048ea5:	83 ec 08             	sub    $0x8,%esp
 8048ea8:	e8 da 08 00 00       	call   8049787 <read_line>
 8048ead:	83 ec 04             	sub    $0x4,%esp
 8048eb0:	6a 0a                	push   $0xa
 8048eb2:	6a 00                	push   $0x0
 8048eb4:	50                   	push   %eax
 8048eb5:	e8 96 fa ff ff       	call   8048950 <strtol@plt>
 8048eba:	89 c3                	mov    %eax,%ebx
 8048ebc:	8d 40 ff             	lea    -0x1(%eax),%eax
 8048ebf:	83 c4 10             	add    $0x10,%esp
 8048ec2:	3d e8 03 00 00       	cmp    $0x3e8,%eax
 8048ec7:	76 05                	jbe    8048ece <secret_phase+0x2a>
 8048ec9:	e8 41 08 00 00       	call   804970f <explode_bomb>
 8048ece:	83 ec 08             	sub    $0x8,%esp
 8048ed1:	53                   	push   %ebx
 8048ed2:	68 00 b2 04 08       	push   $0x804b200
 8048ed7:	e8 77 ff ff ff       	call   8048e53 <fun7>
 8048edc:	83 c4 10             	add    $0x10,%esp
 8048edf:	83 f8 06             	cmp    $0x6,%eax
 8048ee2:	74 05                	je     8048ee9 <secret_phase+0x45>
 8048ee4:	e8 26 08 00 00       	call   804970f <explode_bomb>
 8048ee9:	83 ec 0c             	sub    $0xc,%esp
 8048eec:	68 f0 9a 04 08       	push   $0x8049af0
 8048ef1:	e8 6a f9 ff ff       	call   8048860 <puts@plt>
 8048ef6:	e8 53 09 00 00       	call   804984e <phase_defused>
 8048efb:	83 c4 18             	add    $0x18,%esp
 8048efe:	5b                   	pop    %ebx
 8048eff:	c3                   	ret    

08048f00 <sig_handler>:
 8048f00:	83 ec 18             	sub    $0x18,%esp
 8048f03:	68 c0 9b 04 08       	push   $0x8049bc0
 8048f08:	e8 53 f9 ff ff       	call   8048860 <puts@plt>
 8048f0d:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048f14:	e8 d7 f8 ff ff       	call   80487f0 <sleep@plt>
 8048f19:	c7 04 24 ec 9c 04 08 	movl   $0x8049cec,(%esp)
 8048f20:	e8 5b f8 ff ff       	call   8048780 <printf@plt>
 8048f25:	83 c4 04             	add    $0x4,%esp
 8048f28:	ff 35 a0 b7 04 08    	pushl  0x804b7a0
 8048f2e:	e8 5d f8 ff ff       	call   8048790 <fflush@plt>
 8048f33:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048f3a:	e8 b1 f8 ff ff       	call   80487f0 <sleep@plt>
 8048f3f:	c7 04 24 f4 9c 04 08 	movl   $0x8049cf4,(%esp)
 8048f46:	e8 15 f9 ff ff       	call   8048860 <puts@plt>
 8048f4b:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 8048f52:	e8 39 f9 ff ff       	call   8048890 <exit@plt>

08048f57 <invalid_phase>:
 8048f57:	83 ec 14             	sub    $0x14,%esp
 8048f5a:	ff 74 24 18          	pushl  0x18(%esp)
 8048f5e:	68 fc 9c 04 08       	push   $0x8049cfc
 8048f63:	e8 18 f8 ff ff       	call   8048780 <printf@plt>
 8048f68:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048f6f:	e8 1c f9 ff ff       	call   8048890 <exit@plt>

08048f74 <string_length>:
 8048f74:	8b 54 24 04          	mov    0x4(%esp),%edx
 8048f78:	80 3a 00             	cmpb   $0x0,(%edx)
 8048f7b:	74 10                	je     8048f8d <string_length+0x19>
 8048f7d:	b8 00 00 00 00       	mov    $0x0,%eax
 8048f82:	83 c0 01             	add    $0x1,%eax
 8048f85:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 8048f89:	75 f7                	jne    8048f82 <string_length+0xe>
 8048f8b:	f3 c3                	repz ret 
 8048f8d:	b8 00 00 00 00       	mov    $0x0,%eax
 8048f92:	c3                   	ret    

08048f93 <strings_not_equal>:
 8048f93:	57                   	push   %edi
 8048f94:	56                   	push   %esi
 8048f95:	53                   	push   %ebx
 8048f96:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8048f9a:	8b 74 24 14          	mov    0x14(%esp),%esi
 8048f9e:	53                   	push   %ebx
 8048f9f:	e8 d0 ff ff ff       	call   8048f74 <string_length>
 8048fa4:	89 c7                	mov    %eax,%edi
 8048fa6:	89 34 24             	mov    %esi,(%esp)
 8048fa9:	e8 c6 ff ff ff       	call   8048f74 <string_length>
 8048fae:	83 c4 04             	add    $0x4,%esp
 8048fb1:	ba 01 00 00 00       	mov    $0x1,%edx
 8048fb6:	39 c7                	cmp    %eax,%edi
 8048fb8:	75 38                	jne    8048ff2 <strings_not_equal+0x5f>
 8048fba:	0f b6 03             	movzbl (%ebx),%eax
 8048fbd:	84 c0                	test   %al,%al
 8048fbf:	74 1e                	je     8048fdf <strings_not_equal+0x4c>
 8048fc1:	3a 06                	cmp    (%esi),%al
 8048fc3:	74 06                	je     8048fcb <strings_not_equal+0x38>
 8048fc5:	eb 1f                	jmp    8048fe6 <strings_not_equal+0x53>
 8048fc7:	3a 06                	cmp    (%esi),%al
 8048fc9:	75 22                	jne    8048fed <strings_not_equal+0x5a>
 8048fcb:	83 c3 01             	add    $0x1,%ebx
 8048fce:	83 c6 01             	add    $0x1,%esi
 8048fd1:	0f b6 03             	movzbl (%ebx),%eax
 8048fd4:	84 c0                	test   %al,%al
 8048fd6:	75 ef                	jne    8048fc7 <strings_not_equal+0x34>
 8048fd8:	ba 00 00 00 00       	mov    $0x0,%edx
 8048fdd:	eb 13                	jmp    8048ff2 <strings_not_equal+0x5f>
 8048fdf:	ba 00 00 00 00       	mov    $0x0,%edx
 8048fe4:	eb 0c                	jmp    8048ff2 <strings_not_equal+0x5f>
 8048fe6:	ba 01 00 00 00       	mov    $0x1,%edx
 8048feb:	eb 05                	jmp    8048ff2 <strings_not_equal+0x5f>
 8048fed:	ba 01 00 00 00       	mov    $0x1,%edx
 8048ff2:	89 d0                	mov    %edx,%eax
 8048ff4:	5b                   	pop    %ebx
 8048ff5:	5e                   	pop    %esi
 8048ff6:	5f                   	pop    %edi
 8048ff7:	c3                   	ret    

08048ff8 <open_clientfd>:
 8048ff8:	56                   	push   %esi
 8048ff9:	53                   	push   %ebx
 8048ffa:	83 ec 18             	sub    $0x18,%esp
 8048ffd:	6a 00                	push   $0x0
 8048fff:	6a 01                	push   $0x1
 8049001:	6a 02                	push   $0x2
 8049003:	e8 28 f9 ff ff       	call   8048930 <socket@plt>
 8049008:	89 c3                	mov    %eax,%ebx
 804900a:	83 c4 10             	add    $0x10,%esp
 804900d:	85 c0                	test   %eax,%eax
 804900f:	79 19                	jns    804902a <open_clientfd+0x32>
 8049011:	83 ec 0c             	sub    $0xc,%esp
 8049014:	68 0d 9d 04 08       	push   $0x8049d0d
 8049019:	e8 42 f8 ff ff       	call   8048860 <puts@plt>
 804901e:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049025:	e8 66 f8 ff ff       	call   8048890 <exit@plt>
 804902a:	83 ec 0c             	sub    $0xc,%esp
 804902d:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049031:	e8 0a f9 ff ff       	call   8048940 <gethostbyname@plt>
 8049036:	83 c4 10             	add    $0x10,%esp
 8049039:	85 c0                	test   %eax,%eax
 804903b:	75 19                	jne    8049056 <open_clientfd+0x5e>
 804903d:	83 ec 0c             	sub    $0xc,%esp
 8049040:	68 1b 9d 04 08       	push   $0x8049d1b
 8049045:	e8 16 f8 ff ff       	call   8048860 <puts@plt>
 804904a:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049051:	e8 3a f8 ff ff       	call   8048890 <exit@plt>
 8049056:	89 e6                	mov    %esp,%esi
 8049058:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804905f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8049066:	00 
 8049067:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804906e:	00 
 804906f:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8049076:	00 
 8049077:	66 c7 04 24 02 00    	movw   $0x2,(%esp)
 804907d:	83 ec 04             	sub    $0x4,%esp
 8049080:	ff 70 0c             	pushl  0xc(%eax)
 8049083:	8d 54 24 0c          	lea    0xc(%esp),%edx
 8049087:	52                   	push   %edx
 8049088:	8b 40 10             	mov    0x10(%eax),%eax
 804908b:	ff 30                	pushl  (%eax)
 804908d:	e8 8e f7 ff ff       	call   8048820 <bcopy@plt>
 8049092:	0f b7 44 24 34       	movzwl 0x34(%esp),%eax
 8049097:	66 c1 c8 08          	ror    $0x8,%ax
 804909b:	66 89 44 24 12       	mov    %ax,0x12(%esp)
 80490a0:	83 c4 0c             	add    $0xc,%esp
 80490a3:	6a 10                	push   $0x10
 80490a5:	56                   	push   %esi
 80490a6:	53                   	push   %ebx
 80490a7:	e8 b4 f8 ff ff       	call   8048960 <connect@plt>
 80490ac:	83 c4 10             	add    $0x10,%esp
 80490af:	85 c0                	test   %eax,%eax
 80490b1:	79 19                	jns    80490cc <open_clientfd+0xd4>
 80490b3:	83 ec 0c             	sub    $0xc,%esp
 80490b6:	68 29 9d 04 08       	push   $0x8049d29
 80490bb:	e8 a0 f7 ff ff       	call   8048860 <puts@plt>
 80490c0:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80490c7:	e8 c4 f7 ff ff       	call   8048890 <exit@plt>
 80490cc:	89 d8                	mov    %ebx,%eax
 80490ce:	83 c4 14             	add    $0x14,%esp
 80490d1:	5b                   	pop    %ebx
 80490d2:	5e                   	pop    %esi
 80490d3:	c3                   	ret    

080490d4 <initialize_bomb>:
 80490d4:	83 ec 14             	sub    $0x14,%esp
 80490d7:	68 00 8f 04 08       	push   $0x8048f00
 80490dc:	6a 02                	push   $0x2
 80490de:	e8 fd f6 ff ff       	call   80487e0 <signal@plt>
 80490e3:	83 c4 08             	add    $0x8,%esp
 80490e6:	6a 50                	push   $0x50
 80490e8:	68 37 9d 04 08       	push   $0x8049d37
 80490ed:	e8 06 ff ff ff       	call   8048ff8 <open_clientfd>
 80490f2:	89 04 24             	mov    %eax,(%esp)
 80490f5:	e8 76 f8 ff ff       	call   8048970 <close@plt>
 80490fa:	83 c4 1c             	add    $0x1c,%esp
 80490fd:	c3                   	ret    

080490fe <blank_line>:
 80490fe:	56                   	push   %esi
 80490ff:	53                   	push   %ebx
 8049100:	83 ec 04             	sub    $0x4,%esp
 8049103:	8b 74 24 10          	mov    0x10(%esp),%esi
 8049107:	eb 14                	jmp    804911d <blank_line+0x1f>
 8049109:	e8 72 f8 ff ff       	call   8048980 <__ctype_b_loc@plt>
 804910e:	83 c6 01             	add    $0x1,%esi
 8049111:	0f be db             	movsbl %bl,%ebx
 8049114:	8b 00                	mov    (%eax),%eax
 8049116:	f6 44 58 01 20       	testb  $0x20,0x1(%eax,%ebx,2)
 804911b:	74 0e                	je     804912b <blank_line+0x2d>
 804911d:	0f b6 1e             	movzbl (%esi),%ebx
 8049120:	84 db                	test   %bl,%bl
 8049122:	75 e5                	jne    8049109 <blank_line+0xb>
 8049124:	b8 01 00 00 00       	mov    $0x1,%eax
 8049129:	eb 05                	jmp    8049130 <blank_line+0x32>
 804912b:	b8 00 00 00 00       	mov    $0x0,%eax
 8049130:	83 c4 04             	add    $0x4,%esp
 8049133:	5b                   	pop    %ebx
 8049134:	5e                   	pop    %esi
 8049135:	c3                   	ret    

08049136 <skip>:
 8049136:	53                   	push   %ebx
 8049137:	83 ec 08             	sub    $0x8,%esp
 804913a:	83 ec 04             	sub    $0x4,%esp
 804913d:	ff 35 ac b7 04 08    	pushl  0x804b7ac
 8049143:	6a 50                	push   $0x50
 8049145:	a1 a8 b7 04 08       	mov    0x804b7a8,%eax
 804914a:	8d 04 80             	lea    (%eax,%eax,4),%eax
 804914d:	c1 e0 04             	shl    $0x4,%eax
 8049150:	05 c0 b7 04 08       	add    $0x804b7c0,%eax
 8049155:	50                   	push   %eax
 8049156:	e8 65 f6 ff ff       	call   80487c0 <fgets@plt>
 804915b:	89 c3                	mov    %eax,%ebx
 804915d:	83 c4 10             	add    $0x10,%esp
 8049160:	85 c0                	test   %eax,%eax
 8049162:	74 10                	je     8049174 <skip+0x3e>
 8049164:	83 ec 0c             	sub    $0xc,%esp
 8049167:	50                   	push   %eax
 8049168:	e8 91 ff ff ff       	call   80490fe <blank_line>
 804916d:	83 c4 10             	add    $0x10,%esp
 8049170:	85 c0                	test   %eax,%eax
 8049172:	75 c6                	jne    804913a <skip+0x4>
 8049174:	89 d8                	mov    %ebx,%eax
 8049176:	83 c4 08             	add    $0x8,%esp
 8049179:	5b                   	pop    %ebx
 804917a:	c3                   	ret    

0804917b <writen>:
 804917b:	55                   	push   %ebp
 804917c:	57                   	push   %edi
 804917d:	56                   	push   %esi
 804917e:	53                   	push   %ebx
 804917f:	83 ec 0c             	sub    $0xc,%esp
 8049182:	8b 7c 24 20          	mov    0x20(%esp),%edi
 8049186:	8b 74 24 24          	mov    0x24(%esp),%esi
 804918a:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 804918e:	85 ed                	test   %ebp,%ebp
 8049190:	74 29                	je     80491bb <writen+0x40>
 8049192:	89 eb                	mov    %ebp,%ebx
 8049194:	83 ec 04             	sub    $0x4,%esp
 8049197:	53                   	push   %ebx
 8049198:	56                   	push   %esi
 8049199:	57                   	push   %edi
 804919a:	e8 21 f7 ff ff       	call   80488c0 <write@plt>
 804919f:	83 c4 10             	add    $0x10,%esp
 80491a2:	85 c0                	test   %eax,%eax
 80491a4:	7f 0f                	jg     80491b5 <writen+0x3a>
 80491a6:	e8 45 f7 ff ff       	call   80488f0 <__errno_location@plt>
 80491ab:	83 38 04             	cmpl   $0x4,(%eax)
 80491ae:	75 0f                	jne    80491bf <writen+0x44>
 80491b0:	b8 00 00 00 00       	mov    $0x0,%eax
 80491b5:	01 c6                	add    %eax,%esi
 80491b7:	29 c3                	sub    %eax,%ebx
 80491b9:	75 d9                	jne    8049194 <writen+0x19>
 80491bb:	89 e8                	mov    %ebp,%eax
 80491bd:	eb 05                	jmp    80491c4 <writen+0x49>
 80491bf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80491c4:	83 c4 0c             	add    $0xc,%esp
 80491c7:	5b                   	pop    %ebx
 80491c8:	5e                   	pop    %esi
 80491c9:	5f                   	pop    %edi
 80491ca:	5d                   	pop    %ebp
 80491cb:	c3                   	ret    

080491cc <send_msg>:
 80491cc:	55                   	push   %ebp
 80491cd:	57                   	push   %edi
 80491ce:	56                   	push   %esi
 80491cf:	53                   	push   %ebx
 80491d0:	81 ec 80 24 00 00    	sub    $0x2480,%esp
 80491d6:	6a 00                	push   $0x0
 80491d8:	6a 01                	push   $0x1
 80491da:	6a 02                	push   $0x2
 80491dc:	e8 4f f7 ff ff       	call   8048930 <socket@plt>
 80491e1:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80491e5:	83 c4 10             	add    $0x10,%esp
 80491e8:	85 c0                	test   %eax,%eax
 80491ea:	79 30                	jns    804921c <send_msg+0x50>
 80491ec:	83 ec 04             	sub    $0x4,%esp
 80491ef:	68 57 9d 04 08       	push   $0x8049d57
 80491f4:	68 a1 99 04 08       	push   $0x80499a1
 80491f9:	ff 35 a0 b7 04 08    	pushl  0x804b7a0
 80491ff:	e8 ac f6 ff ff       	call   80488b0 <fprintf@plt>
 8049204:	83 c4 04             	add    $0x4,%esp
 8049207:	ff 74 24 18          	pushl  0x18(%esp)
 804920b:	e8 60 f7 ff ff       	call   8048970 <close@plt>
 8049210:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049217:	e8 74 f6 ff ff       	call   8048890 <exit@plt>
 804921c:	c7 84 24 64 24 00 00 	movl   $0x0,0x2464(%esp)
 8049223:	00 00 00 00 
 8049227:	c7 84 24 68 24 00 00 	movl   $0x0,0x2468(%esp)
 804922e:	00 00 00 00 
 8049232:	c7 84 24 6c 24 00 00 	movl   $0x0,0x246c(%esp)
 8049239:	00 00 00 00 
 804923d:	66 c7 84 24 60 24 00 	movw   $0x2,0x2460(%esp)
 8049244:	00 02 00 
 8049247:	66 c7 84 24 62 24 00 	movw   $0x7ac8,0x2462(%esp)
 804924e:	00 c8 7a 
 8049251:	83 ec 04             	sub    $0x4,%esp
 8049254:	8d 84 24 68 24 00 00 	lea    0x2468(%esp),%eax
 804925b:	50                   	push   %eax
 804925c:	68 37 9d 04 08       	push   $0x8049d37
 8049261:	6a 02                	push   $0x2
 8049263:	e8 48 f5 ff ff       	call   80487b0 <inet_pton@plt>
 8049268:	83 c4 10             	add    $0x10,%esp
 804926b:	85 c0                	test   %eax,%eax
 804926d:	79 3b                	jns    80492aa <send_msg+0xde>
 804926f:	83 ec 04             	sub    $0x4,%esp
 8049272:	68 cb 9d 04 08       	push   $0x8049dcb
 8049277:	68 a1 99 04 08       	push   $0x80499a1
 804927c:	ff 35 a0 b7 04 08    	pushl  0x804b7a0
 8049282:	e8 29 f6 ff ff       	call   80488b0 <fprintf@plt>
 8049287:	83 c4 10             	add    $0x10,%esp
 804928a:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
 804928f:	74 0f                	je     80492a0 <send_msg+0xd4>
 8049291:	83 ec 0c             	sub    $0xc,%esp
 8049294:	ff 74 24 18          	pushl  0x18(%esp)
 8049298:	e8 d3 f6 ff ff       	call   8048970 <close@plt>
 804929d:	83 c4 10             	add    $0x10,%esp
 80492a0:	83 ec 0c             	sub    $0xc,%esp
 80492a3:	6a 01                	push   $0x1
 80492a5:	e8 e6 f5 ff ff       	call   8048890 <exit@plt>
 80492aa:	83 ec 04             	sub    $0x4,%esp
 80492ad:	6a 10                	push   $0x10
 80492af:	8d 84 24 68 24 00 00 	lea    0x2468(%esp),%eax
 80492b6:	50                   	push   %eax
 80492b7:	ff 74 24 18          	pushl  0x18(%esp)
 80492bb:	e8 a0 f6 ff ff       	call   8048960 <connect@plt>
 80492c0:	83 c4 10             	add    $0x10,%esp
 80492c3:	85 c0                	test   %eax,%eax
 80492c5:	79 3b                	jns    8049302 <send_msg+0x136>
 80492c7:	83 ec 04             	sub    $0x4,%esp
 80492ca:	68 64 9d 04 08       	push   $0x8049d64
 80492cf:	68 a1 99 04 08       	push   $0x80499a1
 80492d4:	ff 35 a0 b7 04 08    	pushl  0x804b7a0
 80492da:	e8 d1 f5 ff ff       	call   80488b0 <fprintf@plt>
 80492df:	83 c4 10             	add    $0x10,%esp
 80492e2:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
 80492e7:	74 0f                	je     80492f8 <send_msg+0x12c>
 80492e9:	83 ec 0c             	sub    $0xc,%esp
 80492ec:	ff 74 24 18          	pushl  0x18(%esp)
 80492f0:	e8 7b f6 ff ff       	call   8048970 <close@plt>
 80492f5:	83 c4 10             	add    $0x10,%esp
 80492f8:	83 ec 0c             	sub    $0xc,%esp
 80492fb:	6a 01                	push   $0x1
 80492fd:	e8 8e f5 ff ff       	call   8048890 <exit@plt>
 8049302:	8d 74 24 60          	lea    0x60(%esp),%esi
 8049306:	c7 44 24 60 53 75 62 	movl   $0x6a627553,0x60(%esp)
 804930d:	6a 
 804930e:	c7 44 24 64 65 63 74 	movl   $0x3a746365,0x64(%esp)
 8049315:	3a 
 8049316:	c7 44 24 68 20 42 6f 	movl   $0x6d6f4220,0x68(%esp)
 804931d:	6d 
 804931e:	c7 44 24 6c 62 20 6e 	movl   $0x6f6e2062,0x6c(%esp)
 8049325:	6f 
 8049326:	c7 44 24 70 74 69 66 	movl   $0x69666974,0x70(%esp)
 804932d:	69 
 804932e:	c7 44 24 74 63 61 74 	movl   $0x69746163,0x74(%esp)
 8049335:	69 
 8049336:	c7 44 24 78 6f 6e 0a 	movl   $0xa6e6f,0x78(%esp)
 804933d:	00 
 804933e:	83 ec 08             	sub    $0x8,%esp
 8049341:	56                   	push   %esi
 8049342:	8d 9c 24 6c 04 00 00 	lea    0x46c(%esp),%ebx
 8049349:	53                   	push   %ebx
 804934a:	e8 e1 f4 ff ff       	call   8048830 <strcat@plt>
 804934f:	66 c7 44 24 70 0a 00 	movw   $0xa,0x70(%esp)
 8049356:	83 c4 08             	add    $0x8,%esp
 8049359:	56                   	push   %esi
 804935a:	53                   	push   %ebx
 804935b:	e8 d0 f4 ff ff       	call   8048830 <strcat@plt>
 8049360:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049367:	e8 04 f4 ff ff       	call   8048770 <cuserid@plt>
 804936c:	83 c4 10             	add    $0x10,%esp
 804936f:	85 c0                	test   %eax,%eax
 8049371:	75 16                	jne    8049389 <send_msg+0x1bd>
 8049373:	c7 44 24 10 6e 6f 62 	movl   $0x6f626f6e,0x10(%esp)
 804937a:	6f 
 804937b:	66 c7 44 24 14 64 79 	movw   $0x7964,0x14(%esp)
 8049382:	c6 44 24 16 00       	movb   $0x0,0x16(%esp)
 8049387:	eb 11                	jmp    804939a <send_msg+0x1ce>
 8049389:	83 ec 08             	sub    $0x8,%esp
 804938c:	50                   	push   %eax
 804938d:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8049391:	50                   	push   %eax
 8049392:	e8 a9 f4 ff ff       	call   8048840 <strcpy@plt>
 8049397:	83 c4 10             	add    $0x10,%esp
 804939a:	8b 15 a8 b7 04 08    	mov    0x804b7a8,%edx
 80493a0:	b8 46 9d 04 08       	mov    $0x8049d46,%eax
 80493a5:	83 bc 24 90 24 00 00 	cmpl   $0x0,0x2490(%esp)
 80493ac:	00 
 80493ad:	75 05                	jne    80493b4 <send_msg+0x1e8>
 80493af:	b8 4e 9d 04 08       	mov    $0x8049d4e,%eax
 80493b4:	83 ec 04             	sub    $0x4,%esp
 80493b7:	52                   	push   %edx
 80493b8:	50                   	push   %eax
 80493b9:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 80493bd:	50                   	push   %eax
 80493be:	ff 35 40 b7 04 08    	pushl  0x804b740
 80493c4:	68 40 b3 04 08       	push   $0x804b340
 80493c9:	68 72 9d 04 08       	push   $0x8049d72
 80493ce:	8d 5c 24 7c          	lea    0x7c(%esp),%ebx
 80493d2:	53                   	push   %ebx
 80493d3:	e8 38 f5 ff ff       	call   8048910 <sprintf@plt>
 80493d8:	83 c4 18             	add    $0x18,%esp
 80493db:	53                   	push   %ebx
 80493dc:	8d 84 24 6c 04 00 00 	lea    0x46c(%esp),%eax
 80493e3:	50                   	push   %eax
 80493e4:	e8 47 f4 ff ff       	call   8048830 <strcat@plt>
 80493e9:	83 c4 10             	add    $0x10,%esp
 80493ec:	83 3d a8 b7 04 08 00 	cmpl   $0x0,0x804b7a8
 80493f3:	7e 50                	jle    8049445 <send_msg+0x279>
 80493f5:	be c0 b7 04 08       	mov    $0x804b7c0,%esi
 80493fa:	bb 00 00 00 00       	mov    $0x0,%ebx
 80493ff:	8d 6c 24 10          	lea    0x10(%esp),%ebp
 8049403:	8d 7c 24 60          	lea    0x60(%esp),%edi
 8049407:	83 c3 01             	add    $0x1,%ebx
 804940a:	83 ec 04             	sub    $0x4,%esp
 804940d:	56                   	push   %esi
 804940e:	53                   	push   %ebx
 804940f:	55                   	push   %ebp
 8049410:	ff 35 40 b7 04 08    	pushl  0x804b740
 8049416:	68 40 b3 04 08       	push   $0x804b340
 804941b:	68 8e 9d 04 08       	push   $0x8049d8e
 8049420:	57                   	push   %edi
 8049421:	e8 ea f4 ff ff       	call   8048910 <sprintf@plt>
 8049426:	83 c4 18             	add    $0x18,%esp
 8049429:	57                   	push   %edi
 804942a:	8d 84 24 6c 04 00 00 	lea    0x46c(%esp),%eax
 8049431:	50                   	push   %eax
 8049432:	e8 f9 f3 ff ff       	call   8048830 <strcat@plt>
 8049437:	83 c6 50             	add    $0x50,%esi
 804943a:	83 c4 10             	add    $0x10,%esp
 804943d:	39 1d a8 b7 04 08    	cmp    %ebx,0x804b7a8
 8049443:	7f c2                	jg     8049407 <send_msg+0x23b>
 8049445:	8d 9c 24 60 04 00 00 	lea    0x460(%esp),%ebx
 804944c:	be ff ff ff ff       	mov    $0xffffffff,%esi
 8049451:	89 df                	mov    %ebx,%edi
 8049453:	bd 00 00 00 00       	mov    $0x0,%ebp
 8049458:	89 f1                	mov    %esi,%ecx
 804945a:	89 e8                	mov    %ebp,%eax
 804945c:	f2 ae                	repnz scas %es:(%edi),%al
 804945e:	f7 d1                	not    %ecx
 8049460:	83 e9 01             	sub    $0x1,%ecx
 8049463:	83 ec 04             	sub    $0x4,%esp
 8049466:	51                   	push   %ecx
 8049467:	53                   	push   %ebx
 8049468:	ff 74 24 18          	pushl  0x18(%esp)
 804946c:	e8 0a fd ff ff       	call   804917b <writen>
 8049471:	89 c2                	mov    %eax,%edx
 8049473:	89 df                	mov    %ebx,%edi
 8049475:	89 f1                	mov    %esi,%ecx
 8049477:	89 e8                	mov    %ebp,%eax
 8049479:	f2 ae                	repnz scas %es:(%edi),%al
 804947b:	f7 d1                	not    %ecx
 804947d:	83 e9 01             	sub    $0x1,%ecx
 8049480:	83 c4 10             	add    $0x10,%esp
 8049483:	39 ca                	cmp    %ecx,%edx
 8049485:	73 3b                	jae    80494c2 <send_msg+0x2f6>
 8049487:	83 ec 04             	sub    $0x4,%esp
 804948a:	68 aa 9d 04 08       	push   $0x8049daa
 804948f:	68 a1 99 04 08       	push   $0x80499a1
 8049494:	ff 35 a0 b7 04 08    	pushl  0x804b7a0
 804949a:	e8 11 f4 ff ff       	call   80488b0 <fprintf@plt>
 804949f:	83 c4 10             	add    $0x10,%esp
 80494a2:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
 80494a7:	74 0f                	je     80494b8 <send_msg+0x2ec>
 80494a9:	83 ec 0c             	sub    $0xc,%esp
 80494ac:	ff 74 24 18          	pushl  0x18(%esp)
 80494b0:	e8 bb f4 ff ff       	call   8048970 <close@plt>
 80494b5:	83 c4 10             	add    $0x10,%esp
 80494b8:	83 ec 0c             	sub    $0xc,%esp
 80494bb:	6a 01                	push   $0x1
 80494bd:	e8 ce f3 ff ff       	call   8048890 <exit@plt>
 80494c2:	83 ec 0c             	sub    $0xc,%esp
 80494c5:	ff 74 24 18          	pushl  0x18(%esp)
 80494c9:	e8 a2 f4 ff ff       	call   8048970 <close@plt>
 80494ce:	81 c4 8c 24 00 00    	add    $0x248c,%esp
 80494d4:	5b                   	pop    %ebx
 80494d5:	5e                   	pop    %esi
 80494d6:	5f                   	pop    %edi
 80494d7:	5d                   	pop    %ebp
 80494d8:	c3                   	ret    

080494d9 <send_msg_2>:
 80494d9:	55                   	push   %ebp
 80494da:	57                   	push   %edi
 80494db:	56                   	push   %esi
 80494dc:	53                   	push   %ebx
 80494dd:	83 ec 78             	sub    $0x78,%esp
 80494e0:	6a 00                	push   $0x0
 80494e2:	e8 b9 f2 ff ff       	call   80487a0 <dup@plt>
 80494e7:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80494eb:	83 c4 10             	add    $0x10,%esp
 80494ee:	83 f8 ff             	cmp    $0xffffffff,%eax
 80494f1:	75 19                	jne    804950c <send_msg_2+0x33>
 80494f3:	83 ec 0c             	sub    $0xc,%esp
 80494f6:	68 bd 9d 04 08       	push   $0x8049dbd
 80494fb:	e8 60 f3 ff ff       	call   8048860 <puts@plt>
 8049500:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049507:	e8 84 f3 ff ff       	call   8048890 <exit@plt>
 804950c:	83 ec 0c             	sub    $0xc,%esp
 804950f:	6a 00                	push   $0x0
 8049511:	e8 5a f4 ff ff       	call   8048970 <close@plt>
 8049516:	83 c4 10             	add    $0x10,%esp
 8049519:	83 f8 ff             	cmp    $0xffffffff,%eax
 804951c:	75 19                	jne    8049537 <send_msg_2+0x5e>
 804951e:	83 ec 0c             	sub    $0xc,%esp
 8049521:	68 d1 9d 04 08       	push   $0x8049dd1
 8049526:	e8 35 f3 ff ff       	call   8048860 <puts@plt>
 804952b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049532:	e8 59 f3 ff ff       	call   8048890 <exit@plt>
 8049537:	e8 e4 f3 ff ff       	call   8048920 <tmpfile@plt>
 804953c:	89 c7                	mov    %eax,%edi
 804953e:	85 c0                	test   %eax,%eax
 8049540:	75 19                	jne    804955b <send_msg_2+0x82>
 8049542:	83 ec 0c             	sub    $0xc,%esp
 8049545:	68 e4 9d 04 08       	push   $0x8049de4
 804954a:	e8 11 f3 ff ff       	call   8048860 <puts@plt>
 804954f:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049556:	e8 35 f3 ff ff       	call   8048890 <exit@plt>
 804955b:	50                   	push   %eax
 804955c:	6a 1b                	push   $0x1b
 804955e:	6a 01                	push   $0x1
 8049560:	68 f9 9d 04 08       	push   $0x8049df9
 8049565:	e8 a6 f2 ff ff       	call   8048810 <fwrite@plt>
 804956a:	83 c4 08             	add    $0x8,%esp
 804956d:	57                   	push   %edi
 804956e:	6a 0a                	push   $0xa
 8049570:	e8 8b f3 ff ff       	call   8048900 <fputc@plt>
 8049575:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804957c:	e8 ef f1 ff ff       	call   8048770 <cuserid@plt>
 8049581:	83 c4 10             	add    $0x10,%esp
 8049584:	85 c0                	test   %eax,%eax
 8049586:	75 16                	jne    804959e <send_msg_2+0xc5>
 8049588:	c7 44 24 10 6e 6f 62 	movl   $0x6f626f6e,0x10(%esp)
 804958f:	6f 
 8049590:	66 c7 44 24 14 64 79 	movw   $0x7964,0x14(%esp)
 8049597:	c6 44 24 16 00       	movb   $0x0,0x16(%esp)
 804959c:	eb 11                	jmp    80495af <send_msg_2+0xd6>
 804959e:	83 ec 08             	sub    $0x8,%esp
 80495a1:	50                   	push   %eax
 80495a2:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 80495a6:	50                   	push   %eax
 80495a7:	e8 94 f2 ff ff       	call   8048840 <strcpy@plt>
 80495ac:	83 c4 10             	add    $0x10,%esp
 80495af:	8b 15 a8 b7 04 08    	mov    0x804b7a8,%edx
 80495b5:	b8 46 9d 04 08       	mov    $0x8049d46,%eax
 80495ba:	83 bc 24 80 00 00 00 	cmpl   $0x0,0x80(%esp)
 80495c1:	00 
 80495c2:	75 05                	jne    80495c9 <send_msg_2+0xf0>
 80495c4:	b8 4e 9d 04 08       	mov    $0x8049d4e,%eax
 80495c9:	83 ec 04             	sub    $0x4,%esp
 80495cc:	52                   	push   %edx
 80495cd:	50                   	push   %eax
 80495ce:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 80495d2:	50                   	push   %eax
 80495d3:	ff 35 40 b7 04 08    	pushl  0x804b740
 80495d9:	68 40 b3 04 08       	push   $0x804b340
 80495de:	68 72 9d 04 08       	push   $0x8049d72
 80495e3:	57                   	push   %edi
 80495e4:	e8 c7 f2 ff ff       	call   80488b0 <fprintf@plt>
 80495e9:	83 c4 20             	add    $0x20,%esp
 80495ec:	83 3d a8 b7 04 08 00 	cmpl   $0x0,0x804b7a8
 80495f3:	7e 3b                	jle    8049630 <send_msg_2+0x157>
 80495f5:	be c0 b7 04 08       	mov    $0x804b7c0,%esi
 80495fa:	bb 00 00 00 00       	mov    $0x0,%ebx
 80495ff:	8d 6c 24 10          	lea    0x10(%esp),%ebp
 8049603:	83 c3 01             	add    $0x1,%ebx
 8049606:	83 ec 04             	sub    $0x4,%esp
 8049609:	56                   	push   %esi
 804960a:	53                   	push   %ebx
 804960b:	55                   	push   %ebp
 804960c:	ff 35 40 b7 04 08    	pushl  0x804b740
 8049612:	68 40 b3 04 08       	push   $0x804b340
 8049617:	68 8e 9d 04 08       	push   $0x8049d8e
 804961c:	57                   	push   %edi
 804961d:	e8 8e f2 ff ff       	call   80488b0 <fprintf@plt>
 8049622:	83 c6 50             	add    $0x50,%esi
 8049625:	83 c4 20             	add    $0x20,%esp
 8049628:	39 1d a8 b7 04 08    	cmp    %ebx,0x804b7a8
 804962e:	7f d3                	jg     8049603 <send_msg_2+0x12a>
 8049630:	83 ec 0c             	sub    $0xc,%esp
 8049633:	57                   	push   %edi
 8049634:	e8 c7 f1 ff ff       	call   8048800 <rewind@plt>
 8049639:	c7 04 24 15 9e 04 08 	movl   $0x8049e15,(%esp)
 8049640:	68 1f 9e 04 08       	push   $0x8049e1f
 8049645:	68 27 9e 04 08       	push   $0x8049e27
 804964a:	68 3e 9e 04 08       	push   $0x8049e3e
 804964f:	68 00 be 04 08       	push   $0x804be00
 8049654:	e8 b7 f2 ff ff       	call   8048910 <sprintf@plt>
 8049659:	83 c4 14             	add    $0x14,%esp
 804965c:	68 00 be 04 08       	push   $0x804be00
 8049661:	e8 0a f2 ff ff       	call   8048870 <system@plt>
 8049666:	83 c4 10             	add    $0x10,%esp
 8049669:	85 c0                	test   %eax,%eax
 804966b:	74 19                	je     8049686 <send_msg_2+0x1ad>
 804966d:	83 ec 0c             	sub    $0xc,%esp
 8049670:	68 47 9e 04 08       	push   $0x8049e47
 8049675:	e8 e6 f1 ff ff       	call   8048860 <puts@plt>
 804967a:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049681:	e8 0a f2 ff ff       	call   8048890 <exit@plt>
 8049686:	83 ec 0c             	sub    $0xc,%esp
 8049689:	57                   	push   %edi
 804968a:	e8 41 f1 ff ff       	call   80487d0 <fclose@plt>
 804968f:	83 c4 10             	add    $0x10,%esp
 8049692:	85 c0                	test   %eax,%eax
 8049694:	74 19                	je     80496af <send_msg_2+0x1d6>
 8049696:	83 ec 0c             	sub    $0xc,%esp
 8049699:	68 61 9e 04 08       	push   $0x8049e61
 804969e:	e8 bd f1 ff ff       	call   8048860 <puts@plt>
 80496a3:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80496aa:	e8 e1 f1 ff ff       	call   8048890 <exit@plt>
 80496af:	83 ec 0c             	sub    $0xc,%esp
 80496b2:	ff 74 24 18          	pushl  0x18(%esp)
 80496b6:	e8 e5 f0 ff ff       	call   80487a0 <dup@plt>
 80496bb:	83 c4 10             	add    $0x10,%esp
 80496be:	85 c0                	test   %eax,%eax
 80496c0:	74 19                	je     80496db <send_msg_2+0x202>
 80496c2:	83 ec 0c             	sub    $0xc,%esp
 80496c5:	68 7a 9e 04 08       	push   $0x8049e7a
 80496ca:	e8 91 f1 ff ff       	call   8048860 <puts@plt>
 80496cf:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80496d6:	e8 b5 f1 ff ff       	call   8048890 <exit@plt>
 80496db:	83 ec 0c             	sub    $0xc,%esp
 80496de:	ff 74 24 18          	pushl  0x18(%esp)
 80496e2:	e8 89 f2 ff ff       	call   8048970 <close@plt>
 80496e7:	83 c4 10             	add    $0x10,%esp
 80496ea:	85 c0                	test   %eax,%eax
 80496ec:	74 19                	je     8049707 <send_msg_2+0x22e>
 80496ee:	83 ec 0c             	sub    $0xc,%esp
 80496f1:	68 95 9e 04 08       	push   $0x8049e95
 80496f6:	e8 65 f1 ff ff       	call   8048860 <puts@plt>
 80496fb:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049702:	e8 89 f1 ff ff       	call   8048890 <exit@plt>
 8049707:	83 c4 6c             	add    $0x6c,%esp
 804970a:	5b                   	pop    %ebx
 804970b:	5e                   	pop    %esi
 804970c:	5f                   	pop    %edi
 804970d:	5d                   	pop    %ebp
 804970e:	c3                   	ret    

0804970f <explode_bomb>:
 804970f:	83 ec 18             	sub    $0x18,%esp
 8049712:	68 ac 9e 04 08       	push   $0x8049eac
 8049717:	e8 44 f1 ff ff       	call   8048860 <puts@plt>
 804971c:	c7 04 24 b5 9e 04 08 	movl   $0x8049eb5,(%esp)
 8049723:	e8 38 f1 ff ff       	call   8048860 <puts@plt>
 8049728:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804972f:	e8 98 fa ff ff       	call   80491cc <send_msg>
 8049734:	c7 04 24 f8 9b 04 08 	movl   $0x8049bf8,(%esp)
 804973b:	e8 20 f1 ff ff       	call   8048860 <puts@plt>
 8049740:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049747:	e8 44 f1 ff ff       	call   8048890 <exit@plt>

0804974c <read_six_numbers>:
 804974c:	83 ec 0c             	sub    $0xc,%esp
 804974f:	8b 44 24 14          	mov    0x14(%esp),%eax
 8049753:	8d 50 14             	lea    0x14(%eax),%edx
 8049756:	52                   	push   %edx
 8049757:	8d 50 10             	lea    0x10(%eax),%edx
 804975a:	52                   	push   %edx
 804975b:	8d 50 0c             	lea    0xc(%eax),%edx
 804975e:	52                   	push   %edx
 804975f:	8d 50 08             	lea    0x8(%eax),%edx
 8049762:	52                   	push   %edx
 8049763:	8d 50 04             	lea    0x4(%eax),%edx
 8049766:	52                   	push   %edx
 8049767:	50                   	push   %eax
 8049768:	68 cc 9e 04 08       	push   $0x8049ecc
 804976d:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049771:	e8 5a f1 ff ff       	call   80488d0 <__isoc99_sscanf@plt>
 8049776:	83 c4 20             	add    $0x20,%esp
 8049779:	83 f8 05             	cmp    $0x5,%eax
 804977c:	7f 05                	jg     8049783 <read_six_numbers+0x37>
 804977e:	e8 8c ff ff ff       	call   804970f <explode_bomb>
 8049783:	83 c4 0c             	add    $0xc,%esp
 8049786:	c3                   	ret    

08049787 <read_line>:
 8049787:	57                   	push   %edi
 8049788:	56                   	push   %esi
 8049789:	53                   	push   %ebx
 804978a:	e8 a7 f9 ff ff       	call   8049136 <skip>
 804978f:	85 c0                	test   %eax,%eax
 8049791:	75 62                	jne    80497f5 <read_line+0x6e>
 8049793:	a1 80 b7 04 08       	mov    0x804b780,%eax
 8049798:	39 05 ac b7 04 08    	cmp    %eax,0x804b7ac
 804979e:	75 12                	jne    80497b2 <read_line+0x2b>
 80497a0:	83 ec 0c             	sub    $0xc,%esp
 80497a3:	68 de 9e 04 08       	push   $0x8049ede
 80497a8:	e8 b3 f0 ff ff       	call   8048860 <puts@plt>
 80497ad:	e8 5d ff ff ff       	call   804970f <explode_bomb>
 80497b2:	83 ec 0c             	sub    $0xc,%esp
 80497b5:	68 fc 9e 04 08       	push   $0x8049efc
 80497ba:	e8 91 f0 ff ff       	call   8048850 <getenv@plt>
 80497bf:	83 c4 10             	add    $0x10,%esp
 80497c2:	85 c0                	test   %eax,%eax
 80497c4:	74 0a                	je     80497d0 <read_line+0x49>
 80497c6:	83 ec 0c             	sub    $0xc,%esp
 80497c9:	6a 00                	push   $0x0
 80497cb:	e8 c0 f0 ff ff       	call   8048890 <exit@plt>
 80497d0:	a1 80 b7 04 08       	mov    0x804b780,%eax
 80497d5:	a3 ac b7 04 08       	mov    %eax,0x804b7ac
 80497da:	e8 57 f9 ff ff       	call   8049136 <skip>
 80497df:	85 c0                	test   %eax,%eax
 80497e1:	75 12                	jne    80497f5 <read_line+0x6e>
 80497e3:	83 ec 0c             	sub    $0xc,%esp
 80497e6:	68 de 9e 04 08       	push   $0x8049ede
 80497eb:	e8 70 f0 ff ff       	call   8048860 <puts@plt>
 80497f0:	e8 1a ff ff ff       	call   804970f <explode_bomb>
 80497f5:	8b 1d a8 b7 04 08    	mov    0x804b7a8,%ebx
 80497fb:	8d 34 9b             	lea    (%ebx,%ebx,4),%esi
 80497fe:	c1 e6 04             	shl    $0x4,%esi
 8049801:	81 c6 c0 b7 04 08    	add    $0x804b7c0,%esi
 8049807:	89 f7                	mov    %esi,%edi
 8049809:	b8 00 00 00 00       	mov    $0x0,%eax
 804980e:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049813:	f2 ae                	repnz scas %es:(%edi),%al
 8049815:	f7 d1                	not    %ecx
 8049817:	83 e9 01             	sub    $0x1,%ecx
 804981a:	83 f9 4f             	cmp    $0x4f,%ecx
 804981d:	75 12                	jne    8049831 <read_line+0xaa>
 804981f:	83 ec 0c             	sub    $0xc,%esp
 8049822:	68 07 9f 04 08       	push   $0x8049f07
 8049827:	e8 34 f0 ff ff       	call   8048860 <puts@plt>
 804982c:	e8 de fe ff ff       	call   804970f <explode_bomb>
 8049831:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
 8049834:	c1 e0 04             	shl    $0x4,%eax
 8049837:	c6 84 01 bf b7 04 08 	movb   $0x0,0x804b7bf(%ecx,%eax,1)
 804983e:	00 
 804983f:	83 c3 01             	add    $0x1,%ebx
 8049842:	89 1d a8 b7 04 08    	mov    %ebx,0x804b7a8
 8049848:	89 f0                	mov    %esi,%eax
 804984a:	5b                   	pop    %ebx
 804984b:	5e                   	pop    %esi
 804984c:	5f                   	pop    %edi
 804984d:	c3                   	ret    

0804984e <phase_defused>:
 804984e:	83 ec 78             	sub    $0x78,%esp
 8049851:	6a 01                	push   $0x1
 8049853:	e8 74 f9 ff ff       	call   80491cc <send_msg>
 8049858:	83 c4 10             	add    $0x10,%esp
 804985b:	83 3d a8 b7 04 08 06 	cmpl   $0x6,0x804b7a8
 8049862:	75 77                	jne    80498db <phase_defused+0x8d>
 8049864:	8d 44 24 10          	lea    0x10(%esp),%eax
 8049868:	50                   	push   %eax
 8049869:	8d 44 24 10          	lea    0x10(%esp),%eax
 804986d:	50                   	push   %eax
 804986e:	68 22 9f 04 08       	push   $0x8049f22
 8049873:	68 b0 b8 04 08       	push   $0x804b8b0
 8049878:	e8 53 f0 ff ff       	call   80488d0 <__isoc99_sscanf@plt>
 804987d:	83 c4 10             	add    $0x10,%esp
 8049880:	83 f8 02             	cmp    $0x2,%eax
 8049883:	75 3a                	jne    80498bf <phase_defused+0x71>
 8049885:	83 ec 08             	sub    $0x8,%esp
 8049888:	68 28 9f 04 08       	push   $0x8049f28
 804988d:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8049891:	50                   	push   %eax
 8049892:	e8 fc f6 ff ff       	call   8048f93 <strings_not_equal>
 8049897:	83 c4 10             	add    $0x10,%esp
 804989a:	85 c0                	test   %eax,%eax
 804989c:	75 21                	jne    80498bf <phase_defused+0x71>
 804989e:	83 ec 0c             	sub    $0xc,%esp
 80498a1:	68 1c 9c 04 08       	push   $0x8049c1c
 80498a6:	e8 b5 ef ff ff       	call   8048860 <puts@plt>
 80498ab:	c7 04 24 44 9c 04 08 	movl   $0x8049c44,(%esp)
 80498b2:	e8 a9 ef ff ff       	call   8048860 <puts@plt>
 80498b7:	e8 e8 f5 ff ff       	call   8048ea4 <secret_phase>
 80498bc:	83 c4 10             	add    $0x10,%esp
 80498bf:	83 ec 0c             	sub    $0xc,%esp
 80498c2:	68 7c 9c 04 08       	push   $0x8049c7c
 80498c7:	e8 94 ef ff ff       	call   8048860 <puts@plt>
 80498cc:	c7 04 24 a8 9c 04 08 	movl   $0x8049ca8,(%esp)
 80498d3:	e8 88 ef ff ff       	call   8048860 <puts@plt>
 80498d8:	83 c4 10             	add    $0x10,%esp
 80498db:	83 c4 6c             	add    $0x6c,%esp
 80498de:	c3                   	ret    
 80498df:	90                   	nop

080498e0 <__libc_csu_init>:
 80498e0:	55                   	push   %ebp
 80498e1:	57                   	push   %edi
 80498e2:	31 ff                	xor    %edi,%edi
 80498e4:	56                   	push   %esi
 80498e5:	53                   	push   %ebx
 80498e6:	e8 d5 f0 ff ff       	call   80489c0 <__x86.get_pc_thunk.bx>
 80498eb:	81 c3 0d 18 00 00    	add    $0x180d,%ebx
 80498f1:	83 ec 1c             	sub    $0x1c,%esp
 80498f4:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 80498f8:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80498fe:	e8 31 ee ff ff       	call   8048734 <_init>
 8049903:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8049909:	29 c6                	sub    %eax,%esi
 804990b:	c1 fe 02             	sar    $0x2,%esi
 804990e:	85 f6                	test   %esi,%esi
 8049910:	74 27                	je     8049939 <__libc_csu_init+0x59>
 8049912:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049918:	8b 44 24 38          	mov    0x38(%esp),%eax
 804991c:	89 2c 24             	mov    %ebp,(%esp)
 804991f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049923:	8b 44 24 34          	mov    0x34(%esp),%eax
 8049927:	89 44 24 04          	mov    %eax,0x4(%esp)
 804992b:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8049932:	83 c7 01             	add    $0x1,%edi
 8049935:	39 f7                	cmp    %esi,%edi
 8049937:	75 df                	jne    8049918 <__libc_csu_init+0x38>
 8049939:	83 c4 1c             	add    $0x1c,%esp
 804993c:	5b                   	pop    %ebx
 804993d:	5e                   	pop    %esi
 804993e:	5f                   	pop    %edi
 804993f:	5d                   	pop    %ebp
 8049940:	c3                   	ret    
 8049941:	eb 0d                	jmp    8049950 <__libc_csu_fini>
 8049943:	90                   	nop
 8049944:	90                   	nop
 8049945:	90                   	nop
 8049946:	90                   	nop
 8049947:	90                   	nop
 8049948:	90                   	nop
 8049949:	90                   	nop
 804994a:	90                   	nop
 804994b:	90                   	nop
 804994c:	90                   	nop
 804994d:	90                   	nop
 804994e:	90                   	nop
 804994f:	90                   	nop

08049950 <__libc_csu_fini>:
 8049950:	f3 c3                	repz ret 

Disassembly of section .fini:

08049954 <_fini>:
 8049954:	53                   	push   %ebx
 8049955:	83 ec 08             	sub    $0x8,%esp
 8049958:	e8 63 f0 ff ff       	call   80489c0 <__x86.get_pc_thunk.bx>
 804995d:	81 c3 9b 17 00 00    	add    $0x179b,%ebx
 8049963:	83 c4 08             	add    $0x8,%esp
 8049966:	5b                   	pop    %ebx
 8049967:	c3                   	ret    
