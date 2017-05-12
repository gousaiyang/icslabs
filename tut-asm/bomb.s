
./bomb：     文件格式 elf32-i386


Disassembly of section .init:

08048304 <_init>:
 8048304:	55                   	push   %ebp
 8048305:	89 e5                	mov    %esp,%ebp
 8048307:	53                   	push   %ebx
 8048308:	83 ec 04             	sub    $0x4,%esp
 804830b:	e8 00 00 00 00       	call   8048310 <_init+0xc>
 8048310:	5b                   	pop    %ebx
 8048311:	81 c3 84 13 00 00    	add    $0x1384,%ebx
 8048317:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 804831d:	85 d2                	test   %edx,%edx
 804831f:	74 05                	je     8048326 <_init+0x22>
 8048321:	e8 1e 00 00 00       	call   8048344 <__gmon_start__@plt>
 8048326:	e8 05 01 00 00       	call   8048430 <frame_dummy>
 804832b:	e8 00 02 00 00       	call   8048530 <__do_global_ctors_aux>
 8048330:	58                   	pop    %eax
 8048331:	5b                   	pop    %ebx
 8048332:	c9                   	leave  
 8048333:	c3                   	ret    

Disassembly of section .plt:

08048334 <__gmon_start__@plt-0x10>:
 8048334:	ff 35 98 96 04 08    	pushl  0x8049698
 804833a:	ff 25 9c 96 04 08    	jmp    *0x804969c
 8048340:	00 00                	add    %al,(%eax)
	...

08048344 <__gmon_start__@plt>:
 8048344:	ff 25 a0 96 04 08    	jmp    *0x80496a0
 804834a:	68 00 00 00 00       	push   $0x0
 804834f:	e9 e0 ff ff ff       	jmp    8048334 <_init+0x30>

08048354 <__libc_start_main@plt>:
 8048354:	ff 25 a4 96 04 08    	jmp    *0x80496a4
 804835a:	68 08 00 00 00       	push   $0x8
 804835f:	e9 d0 ff ff ff       	jmp    8048334 <_init+0x30>

08048364 <printf@plt>:
 8048364:	ff 25 a8 96 04 08    	jmp    *0x80496a8
 804836a:	68 10 00 00 00       	push   $0x10
 804836f:	e9 c0 ff ff ff       	jmp    8048334 <_init+0x30>

08048374 <__isoc99_scanf@plt>:
 8048374:	ff 25 ac 96 04 08    	jmp    *0x80496ac
 804837a:	68 18 00 00 00       	push   $0x18
 804837f:	e9 b0 ff ff ff       	jmp    8048334 <_init+0x30>

08048384 <puts@plt>:
 8048384:	ff 25 b0 96 04 08    	jmp    *0x80496b0
 804838a:	68 20 00 00 00       	push   $0x20
 804838f:	e9 a0 ff ff ff       	jmp    8048334 <_init+0x30>

Disassembly of section .text:

080483a0 <_start>:
 80483a0:	31 ed                	xor    %ebp,%ebp
 80483a2:	5e                   	pop    %esi
 80483a3:	89 e1                	mov    %esp,%ecx
 80483a5:	83 e4 f0             	and    $0xfffffff0,%esp
 80483a8:	50                   	push   %eax
 80483a9:	54                   	push   %esp
 80483aa:	52                   	push   %edx
 80483ab:	68 c0 84 04 08       	push   $0x80484c0
 80483b0:	68 d0 84 04 08       	push   $0x80484d0
 80483b5:	51                   	push   %ecx
 80483b6:	56                   	push   %esi
 80483b7:	68 54 84 04 08       	push   $0x8048454
 80483bc:	e8 93 ff ff ff       	call   8048354 <__libc_start_main@plt>
 80483c1:	f4                   	hlt    
 80483c2:	90                   	nop
 80483c3:	90                   	nop
 80483c4:	90                   	nop
 80483c5:	90                   	nop
 80483c6:	90                   	nop
 80483c7:	90                   	nop
 80483c8:	90                   	nop
 80483c9:	90                   	nop
 80483ca:	90                   	nop
 80483cb:	90                   	nop
 80483cc:	90                   	nop
 80483cd:	90                   	nop
 80483ce:	90                   	nop
 80483cf:	90                   	nop

080483d0 <__do_global_dtors_aux>:
 80483d0:	55                   	push   %ebp
 80483d1:	89 e5                	mov    %esp,%ebp
 80483d3:	53                   	push   %ebx
 80483d4:	83 ec 04             	sub    $0x4,%esp
 80483d7:	80 3d bc 96 04 08 00 	cmpb   $0x0,0x80496bc
 80483de:	75 3f                	jne    804841f <__do_global_dtors_aux+0x4f>
 80483e0:	a1 c0 96 04 08       	mov    0x80496c0,%eax
 80483e5:	bb b8 95 04 08       	mov    $0x80495b8,%ebx
 80483ea:	81 eb b4 95 04 08    	sub    $0x80495b4,%ebx
 80483f0:	c1 fb 02             	sar    $0x2,%ebx
 80483f3:	83 eb 01             	sub    $0x1,%ebx
 80483f6:	39 d8                	cmp    %ebx,%eax
 80483f8:	73 1e                	jae    8048418 <__do_global_dtors_aux+0x48>
 80483fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048400:	83 c0 01             	add    $0x1,%eax
 8048403:	a3 c0 96 04 08       	mov    %eax,0x80496c0
 8048408:	ff 14 85 b4 95 04 08 	call   *0x80495b4(,%eax,4)
 804840f:	a1 c0 96 04 08       	mov    0x80496c0,%eax
 8048414:	39 d8                	cmp    %ebx,%eax
 8048416:	72 e8                	jb     8048400 <__do_global_dtors_aux+0x30>
 8048418:	c6 05 bc 96 04 08 01 	movb   $0x1,0x80496bc
 804841f:	83 c4 04             	add    $0x4,%esp
 8048422:	5b                   	pop    %ebx
 8048423:	5d                   	pop    %ebp
 8048424:	c3                   	ret    
 8048425:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048430 <frame_dummy>:
 8048430:	55                   	push   %ebp
 8048431:	89 e5                	mov    %esp,%ebp
 8048433:	83 ec 18             	sub    $0x18,%esp
 8048436:	a1 bc 95 04 08       	mov    0x80495bc,%eax
 804843b:	85 c0                	test   %eax,%eax
 804843d:	74 12                	je     8048451 <frame_dummy+0x21>
 804843f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048444:	85 c0                	test   %eax,%eax
 8048446:	74 09                	je     8048451 <frame_dummy+0x21>
 8048448:	c7 04 24 bc 95 04 08 	movl   $0x80495bc,(%esp)
 804844f:	ff d0                	call   *%eax
 8048451:	c9                   	leave  
 8048452:	c3                   	ret    
 8048453:	90                   	nop

08048454 <main>:
 8048454:	55                   	push   %ebp
 8048455:	89 e5                	mov    %esp,%ebp
 8048457:	83 e4 f0             	and    $0xfffffff0,%esp
 804845a:	83 ec 20             	sub    $0x20,%esp
 804845d:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 8048464:	00 
 8048465:	b8 80 85 04 08       	mov    $0x8048580,%eax
 804846a:	89 04 24             	mov    %eax,(%esp)
 804846d:	e8 f2 fe ff ff       	call   8048364 <printf@plt>
 8048472:	b8 90 85 04 08       	mov    $0x8048590,%eax
 8048477:	8d 54 24 18          	lea    0x18(%esp),%edx
 804847b:	89 54 24 04          	mov    %edx,0x4(%esp)
 804847f:	89 04 24             	mov    %eax,(%esp)
 8048482:	e8 ed fe ff ff       	call   8048374 <__isoc99_scanf@plt>
 8048487:	8b 44 24 18          	mov    0x18(%esp),%eax
 804848b:	83 c0 08             	add    $0x8,%eax
 804848e:	c1 e0 02             	shl    $0x2,%eax
 8048491:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8048495:	83 7c 24 1c 58       	cmpl   $0x58,0x1c(%esp)
 804849a:	75 0e                	jne    80484aa <main+0x56>
 804849c:	c7 04 24 93 85 04 08 	movl   $0x8048593,(%esp)
 80484a3:	e8 dc fe ff ff       	call   8048384 <puts@plt>
 80484a8:	eb 0c                	jmp    80484b6 <main+0x62>
 80484aa:	c7 04 24 9c 85 04 08 	movl   $0x804859c,(%esp)
 80484b1:	e8 ce fe ff ff       	call   8048384 <puts@plt>
 80484b6:	b8 00 00 00 00       	mov    $0x0,%eax
 80484bb:	c9                   	leave  
 80484bc:	c3                   	ret    
 80484bd:	90                   	nop
 80484be:	90                   	nop
 80484bf:	90                   	nop

080484c0 <__libc_csu_fini>:
 80484c0:	55                   	push   %ebp
 80484c1:	89 e5                	mov    %esp,%ebp
 80484c3:	5d                   	pop    %ebp
 80484c4:	c3                   	ret    
 80484c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80484c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080484d0 <__libc_csu_init>:
 80484d0:	55                   	push   %ebp
 80484d1:	89 e5                	mov    %esp,%ebp
 80484d3:	57                   	push   %edi
 80484d4:	56                   	push   %esi
 80484d5:	53                   	push   %ebx
 80484d6:	e8 4f 00 00 00       	call   804852a <__i686.get_pc_thunk.bx>
 80484db:	81 c3 b9 11 00 00    	add    $0x11b9,%ebx
 80484e1:	83 ec 1c             	sub    $0x1c,%esp
 80484e4:	e8 1b fe ff ff       	call   8048304 <_init>
 80484e9:	8d bb 18 ff ff ff    	lea    -0xe8(%ebx),%edi
 80484ef:	8d 83 18 ff ff ff    	lea    -0xe8(%ebx),%eax
 80484f5:	29 c7                	sub    %eax,%edi
 80484f7:	c1 ff 02             	sar    $0x2,%edi
 80484fa:	85 ff                	test   %edi,%edi
 80484fc:	74 24                	je     8048522 <__libc_csu_init+0x52>
 80484fe:	31 f6                	xor    %esi,%esi
 8048500:	8b 45 10             	mov    0x10(%ebp),%eax
 8048503:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048507:	8b 45 0c             	mov    0xc(%ebp),%eax
 804850a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804850e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048511:	89 04 24             	mov    %eax,(%esp)
 8048514:	ff 94 b3 18 ff ff ff 	call   *-0xe8(%ebx,%esi,4)
 804851b:	83 c6 01             	add    $0x1,%esi
 804851e:	39 fe                	cmp    %edi,%esi
 8048520:	72 de                	jb     8048500 <__libc_csu_init+0x30>
 8048522:	83 c4 1c             	add    $0x1c,%esp
 8048525:	5b                   	pop    %ebx
 8048526:	5e                   	pop    %esi
 8048527:	5f                   	pop    %edi
 8048528:	5d                   	pop    %ebp
 8048529:	c3                   	ret    

0804852a <__i686.get_pc_thunk.bx>:
 804852a:	8b 1c 24             	mov    (%esp),%ebx
 804852d:	c3                   	ret    
 804852e:	90                   	nop
 804852f:	90                   	nop

08048530 <__do_global_ctors_aux>:
 8048530:	55                   	push   %ebp
 8048531:	89 e5                	mov    %esp,%ebp
 8048533:	53                   	push   %ebx
 8048534:	83 ec 04             	sub    $0x4,%esp
 8048537:	a1 ac 95 04 08       	mov    0x80495ac,%eax
 804853c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804853f:	74 13                	je     8048554 <__do_global_ctors_aux+0x24>
 8048541:	bb ac 95 04 08       	mov    $0x80495ac,%ebx
 8048546:	66 90                	xchg   %ax,%ax
 8048548:	83 eb 04             	sub    $0x4,%ebx
 804854b:	ff d0                	call   *%eax
 804854d:	8b 03                	mov    (%ebx),%eax
 804854f:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048552:	75 f4                	jne    8048548 <__do_global_ctors_aux+0x18>
 8048554:	83 c4 04             	add    $0x4,%esp
 8048557:	5b                   	pop    %ebx
 8048558:	5d                   	pop    %ebp
 8048559:	c3                   	ret    
 804855a:	90                   	nop
 804855b:	90                   	nop

Disassembly of section .fini:

0804855c <_fini>:
 804855c:	55                   	push   %ebp
 804855d:	89 e5                	mov    %esp,%ebp
 804855f:	53                   	push   %ebx
 8048560:	83 ec 04             	sub    $0x4,%esp
 8048563:	e8 00 00 00 00       	call   8048568 <_fini+0xc>
 8048568:	5b                   	pop    %ebx
 8048569:	81 c3 2c 11 00 00    	add    $0x112c,%ebx
 804856f:	e8 5c fe ff ff       	call   80483d0 <__do_global_dtors_aux>
 8048574:	59                   	pop    %ecx
 8048575:	5b                   	pop    %ebx
 8048576:	c9                   	leave  
 8048577:	c3                   	ret    
