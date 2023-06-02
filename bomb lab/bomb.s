
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ca 3e 00 00    	push   0x3eca(%rip)        # 4ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 cb 3e 00 00 	bnd jmp *0x3ecb(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11df:	90                   	nop

Disassembly of section .plt.got:

00000000000011e0 <__cxa_finalize@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 0d 3e 00 00 	bnd jmp *0x3e0d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011f0 <getenv@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 05 3d 00 00 	bnd jmp *0x3d05(%rip)        # 4f00 <getenv@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <__errno_location@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 fd 3c 00 00 	bnd jmp *0x3cfd(%rip)        # 4f08 <__errno_location@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <strcpy@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 f5 3c 00 00 	bnd jmp *0x3cf5(%rip)        # 4f10 <strcpy@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <puts@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 ed 3c 00 00 	bnd jmp *0x3ced(%rip)        # 4f18 <puts@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <write@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 e5 3c 00 00 	bnd jmp *0x3ce5(%rip)        # 4f20 <write@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <strlen@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 dd 3c 00 00 	bnd jmp *0x3cdd(%rip)        # 4f28 <strlen@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <__stack_chk_fail@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 d5 3c 00 00 	bnd jmp *0x3cd5(%rip)        # 4f30 <__stack_chk_fail@GLIBC_2.4>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <alarm@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 cd 3c 00 00 	bnd jmp *0x3ccd(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <close@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 c5 3c 00 00 	bnd jmp *0x3cc5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <read@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 bd 3c 00 00 	bnd jmp *0x3cbd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <fgets@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 b5 3c 00 00 	bnd jmp *0x3cb5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <strcmp@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 ad 3c 00 00 	bnd jmp *0x3cad(%rip)        # 4f58 <strcmp@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <signal@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 a5 3c 00 00 	bnd jmp *0x3ca5(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <gethostbyname@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 9d 3c 00 00 	bnd jmp *0x3c9d(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <__memmove_chk@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 95 3c 00 00 	bnd jmp *0x3c95(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <strtol@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 8d 3c 00 00 	bnd jmp *0x3c8d(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <fflush@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 85 3c 00 00 	bnd jmp *0x3c85(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__isoc99_sscanf@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 7d 3c 00 00 	bnd jmp *0x3c7d(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <__printf_chk@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 75 3c 00 00 	bnd jmp *0x3c75(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <fopen@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 6d 3c 00 00 	bnd jmp *0x3c6d(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <exit@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 65 3c 00 00 	bnd jmp *0x3c65(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <connect@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 5d 3c 00 00 	bnd jmp *0x3c5d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fprintf_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 55 3c 00 00 	bnd jmp *0x3c55(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <sleep@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 4d 3c 00 00 	bnd jmp *0x3c4d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <__ctype_b_loc@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 45 3c 00 00 	bnd jmp *0x3c45(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <__sprintf_chk@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 3d 3c 00 00 	bnd jmp *0x3c3d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <socket@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 35 3c 00 00 	bnd jmp *0x3c35(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013a0 <_start>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	31 ed                	xor    %ebp,%ebp
    13a6:	49 89 d1             	mov    %rdx,%r9
    13a9:	5e                   	pop    %rsi
    13aa:	48 89 e2             	mov    %rsp,%rdx
    13ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13b1:	50                   	push   %rax
    13b2:	54                   	push   %rsp
    13b3:	45 31 c0             	xor    %r8d,%r8d
    13b6:	31 c9                	xor    %ecx,%ecx
    13b8:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1489 <main>
    13bf:	ff 15 13 3c 00 00    	call   *0x3c13(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    13c5:	f4                   	hlt    
    13c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13cd:	00 00 00 

00000000000013d0 <deregister_tm_clones>:
    13d0:	48 8d 3d 89 42 00 00 	lea    0x4289(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    13d7:	48 8d 05 82 42 00 00 	lea    0x4282(%rip),%rax        # 5660 <stdout@GLIBC_2.2.5>
    13de:	48 39 f8             	cmp    %rdi,%rax
    13e1:	74 15                	je     13f8 <deregister_tm_clones+0x28>
    13e3:	48 8b 05 f6 3b 00 00 	mov    0x3bf6(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    13ea:	48 85 c0             	test   %rax,%rax
    13ed:	74 09                	je     13f8 <deregister_tm_clones+0x28>
    13ef:	ff e0                	jmp    *%rax
    13f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13f8:	c3                   	ret    
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <register_tm_clones>:
    1400:	48 8d 3d 59 42 00 00 	lea    0x4259(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    1407:	48 8d 35 52 42 00 00 	lea    0x4252(%rip),%rsi        # 5660 <stdout@GLIBC_2.2.5>
    140e:	48 29 fe             	sub    %rdi,%rsi
    1411:	48 89 f0             	mov    %rsi,%rax
    1414:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1418:	48 c1 f8 03          	sar    $0x3,%rax
    141c:	48 01 c6             	add    %rax,%rsi
    141f:	48 d1 fe             	sar    %rsi
    1422:	74 14                	je     1438 <register_tm_clones+0x38>
    1424:	48 8b 05 c5 3b 00 00 	mov    0x3bc5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    142b:	48 85 c0             	test   %rax,%rax
    142e:	74 08                	je     1438 <register_tm_clones+0x38>
    1430:	ff e0                	jmp    *%rax
    1432:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1438:	c3                   	ret    
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <__do_global_dtors_aux>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	80 3d 3d 42 00 00 00 	cmpb   $0x0,0x423d(%rip)        # 5688 <completed.0>
    144b:	75 2b                	jne    1478 <__do_global_dtors_aux+0x38>
    144d:	55                   	push   %rbp
    144e:	48 83 3d a2 3b 00 00 	cmpq   $0x0,0x3ba2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1455:	00 
    1456:	48 89 e5             	mov    %rsp,%rbp
    1459:	74 0c                	je     1467 <__do_global_dtors_aux+0x27>
    145b:	48 8b 3d a6 3b 00 00 	mov    0x3ba6(%rip),%rdi        # 5008 <__dso_handle>
    1462:	e8 79 fd ff ff       	call   11e0 <__cxa_finalize@plt>
    1467:	e8 64 ff ff ff       	call   13d0 <deregister_tm_clones>
    146c:	c6 05 15 42 00 00 01 	movb   $0x1,0x4215(%rip)        # 5688 <completed.0>
    1473:	5d                   	pop    %rbp
    1474:	c3                   	ret    
    1475:	0f 1f 00             	nopl   (%rax)
    1478:	c3                   	ret    
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <frame_dummy>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	e9 77 ff ff ff       	jmp    1400 <register_tm_clones>

0000000000001489 <main>:
    1489:	f3 0f 1e fa          	endbr64 
    148d:	53                   	push   %rbx
    148e:	83 ff 01             	cmp    $0x1,%edi
    1491:	0f 84 bc 00 00 00    	je     1553 <main+0xca>
    1497:	48 89 f3             	mov    %rsi,%rbx
    149a:	83 ff 02             	cmp    $0x2,%edi
    149d:	0f 85 e5 00 00 00    	jne    1588 <main+0xff>
    14a3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14a7:	48 8d 35 56 1b 00 00 	lea    0x1b56(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    14ae:	e8 6d fe ff ff       	call   1320 <fopen@plt>
    14b3:	48 89 05 d6 41 00 00 	mov    %rax,0x41d6(%rip)        # 5690 <infile>
    14ba:	48 85 c0             	test   %rax,%rax
    14bd:	0f 84 a3 00 00 00    	je     1566 <main+0xdd>
    14c3:	e8 32 06 00 00       	call   1afa <initialize_bomb>
    14c8:	48 8d 3d 71 1b 00 00 	lea    0x1b71(%rip),%rdi        # 3040 <_IO_stdin_used+0x40>
    14cf:	e8 4c fd ff ff       	call   1220 <puts@plt>
    14d4:	48 8d 3d a5 1b 00 00 	lea    0x1ba5(%rip),%rdi        # 3080 <_IO_stdin_used+0x80>
    14db:	e8 40 fd ff ff       	call   1220 <puts@plt>
    14e0:	e8 66 07 00 00       	call   1c4b <read_line>
    14e5:	48 89 c7             	mov    %rax,%rdi
    14e8:	e8 be 00 00 00       	call   15ab <phase_1>
    14ed:	e8 ad 08 00 00       	call   1d9f <phase_defused>
    14f2:	e8 54 07 00 00       	call   1c4b <read_line>
    14f7:	48 89 c7             	mov    %rax,%rdi
    14fa:	e8 d0 00 00 00       	call   15cf <phase_2>
    14ff:	e8 9b 08 00 00       	call   1d9f <phase_defused>
    1504:	e8 42 07 00 00       	call   1c4b <read_line>
    1509:	48 89 c7             	mov    %rax,%rdi
    150c:	e8 32 01 00 00       	call   1643 <phase_3>
    1511:	e8 89 08 00 00       	call   1d9f <phase_defused>
    1516:	e8 30 07 00 00       	call   1c4b <read_line>
    151b:	48 89 c7             	mov    %rax,%rdi
    151e:	e8 41 02 00 00       	call   1764 <phase_4>
    1523:	e8 77 08 00 00       	call   1d9f <phase_defused>
    1528:	e8 1e 07 00 00       	call   1c4b <read_line>
    152d:	48 89 c7             	mov    %rax,%rdi
    1530:	e8 a4 02 00 00       	call   17d9 <phase_5>
    1535:	e8 65 08 00 00       	call   1d9f <phase_defused>
    153a:	e8 0c 07 00 00       	call   1c4b <read_line>
    153f:	48 89 c7             	mov    %rax,%rdi
    1542:	e8 de 02 00 00       	call   1825 <phase_6>
    1547:	e8 53 08 00 00       	call   1d9f <phase_defused>
    154c:	b8 00 00 00 00       	mov    $0x0,%eax
    1551:	5b                   	pop    %rbx
    1552:	c3                   	ret    
    1553:	48 8b 05 16 41 00 00 	mov    0x4116(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    155a:	48 89 05 2f 41 00 00 	mov    %rax,0x412f(%rip)        # 5690 <infile>
    1561:	e9 5d ff ff ff       	jmp    14c3 <main+0x3a>
    1566:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    156a:	48 8b 13             	mov    (%rbx),%rdx
    156d:	48 8d 35 92 1a 00 00 	lea    0x1a92(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    1574:	bf 01 00 00 00       	mov    $0x1,%edi
    1579:	e8 92 fd ff ff       	call   1310 <__printf_chk@plt>
    157e:	bf 08 00 00 00       	mov    $0x8,%edi
    1583:	e8 a8 fd ff ff       	call   1330 <exit@plt>
    1588:	48 8b 16             	mov    (%rsi),%rdx
    158b:	48 8d 35 91 1a 00 00 	lea    0x1a91(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    1592:	bf 01 00 00 00       	mov    $0x1,%edi
    1597:	b8 00 00 00 00       	mov    $0x0,%eax
    159c:	e8 6f fd ff ff       	call   1310 <__printf_chk@plt>
    15a1:	bf 08 00 00 00       	mov    $0x8,%edi
    15a6:	e8 85 fd ff ff       	call   1330 <exit@plt>

00000000000015ab <phase_1>:
    15ab:	f3 0f 1e fa          	endbr64 
    15af:	48 83 ec 08          	sub    $0x8,%rsp
    15b3:	48 8d 35 f6 1a 00 00 	lea    0x1af6(%rip),%rsi        # 30b0 <_IO_stdin_used+0xb0>
    15ba:	e8 db 04 00 00       	call   1a9a <strings_not_equal>
    15bf:	85 c0                	test   %eax,%eax
    15c1:	75 05                	jne    15c8 <phase_1+0x1d>
    15c3:	48 83 c4 08          	add    $0x8,%rsp
    15c7:	c3                   	ret    
    15c8:	e8 e1 05 00 00       	call   1bae <explode_bomb>
    15cd:	eb f4                	jmp    15c3 <phase_1+0x18>
00000000000015cf <phase_2>:
    15cf:	f3 0f 1e fa          	endbr64 
    15d3:	55                   	push   %rbp
    15d4:	53                   	push   %rbx
    15d5:	48 83 ec 28          	sub    $0x28,%rsp
    15d9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15e0:	00 00 
    15e2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    15e7:	31 c0                	xor    %eax,%eax
    15e9:	48 89 e6             	mov    %rsp,%rsi
    15ec:	e8 15 06 00 00       	call   1c06 <read_six_numbers>
    15f1:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    15f5:	75 07                	jne    15fe <phase_2+0x2f>
    15f7:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    15fc:	74 05                	je     1603 <phase_2+0x34>
    15fe:	e8 ab 05 00 00       	call   1bae <explode_bomb>
    1603:	48 89 e3             	mov    %rsp,%rbx
    1606:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    160b:	eb 09                	jmp    1616 <phase_2+0x47>
    160d:	48 83 c3 04          	add    $0x4,%rbx
    1611:	48 39 eb             	cmp    %rbp,%rbx
    1614:	74 11                	je     1627 <phase_2+0x58>
    1616:	8b 43 04             	mov    0x4(%rbx),%eax
    1619:	03 03                	add    (%rbx),%eax
    161b:	39 43 08             	cmp    %eax,0x8(%rbx)
    161e:	74 ed                	je     160d <phase_2+0x3e>
    1620:	e8 89 05 00 00       	call   1bae <explode_bomb>
    1625:	eb e6                	jmp    160d <phase_2+0x3e>
    1627:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    162c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1633:	00 00 
    1635:	75 07                	jne    163e <phase_2+0x6f>
    1637:	48 83 c4 28          	add    $0x28,%rsp
    163b:	5b                   	pop    %rbx
    163c:	5d                   	pop    %rbp
    163d:	c3                   	ret    
    163e:	e8 0d fc ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001643 <phase_3>:
   0x0000555555555643 <+0>:     endbr64 
   0x0000555555555647 <+4>:     sub    $0x18,%rsp
   0x000055555555564b <+8>:     mov    %fs:0x28,%rax
   0x0000555555555654 <+17>:    mov    %rax,0x8(%rsp)
   0x0000555555555659 <+22>:    xor    %eax,%eax
   0x000055555555565b <+24>:    lea    0x4(%rsp),%rcx
   0x0000555555555660 <+29>:    mov    %rsp,%rdx
   0x0000555555555663 <+32>:    lea    0x1ce6(%rip),%rsi        # 0x555555557350
   0x000055555555566a <+39>:    call   0x555555555300 <__isoc99_sscanf@plt>
   0x000055555555566f <+44>:    cmp    $0x1,%eax
   0x0000555555555672 <+47>:    jle    0x555555555692 <phase_3+79> # jmp bomb
   0x0000555555555674 <+49>:    cmpl   $0x7,(%rsp)
   0x0000555555555678 <+53>:    ja     0x555555555718 <phase_3+213> # jmp bomb
   0x000055555555567e <+59>:    mov    (%rsp),%eax
   0x0000555555555681 <+62>:    lea    0x1a98(%rip),%rdx        # 0x555555557120
   0x0000555555555688 <+69>:    movslq (%rdx,%rax,4),%rax
   0x000055555555568c <+73>:    add    %rdx,%rax
   0x000055555555568f <+76>:    notrack jmp *%rax
   0x0000555555555692 <+79>:    call   0x555555555bae <explode_bomb>
   0x0000555555555697 <+84>:    jmp    0x555555555674 <phase_3+49>
   0x0000555555555699 <+86>:    mov    $0x2bf,%eax
   0x000055555555569e <+91>:    sub    $0x1de,%eax
   0x00005555555556a3 <+96>:    add    $0x12e,%eax
   0x00005555555556a8 <+101>:   sub    $0x12c,%eax
   0x00005555555556ad <+106>:   add    $0x12c,%eax
   0x00005555555556b2 <+111>:   sub    $0x12c,%eax
   0x00005555555556b7 <+116>:   add    $0x12c,%eax
   0x00005555555556bc <+121>:   sub    $0x12c,%eax
   0x00005555555556c1 <+126>:   cmpl   $0x5,(%rsp)
   0x00005555555556c5 <+130>:   jg     0x5555555556cd <phase_3+138> # jmp bomb
   0x00005555555556c7 <+132>:   cmp    %eax,0x4(%rsp)
   0x00005555555556cb <+136>:   je     0x5555555556d2 <phase_3+143>
   0x00005555555556cd <+138>:   call   0x555555555bae <explode_bomb>
   0x00005555555556d2 <+143>:   mov    0x8(%rsp),%rax
   0x00005555555556d7 <+148>:   sub    %fs:0x28,%rax
   0x00005555555556e0 <+157>:   jne    0x555555555724 <phase_3+225>
   0x00005555555556e2 <+159>:   add    $0x18,%rsp
   0x00005555555556e6 <+163>:   ret    
   0x00005555555556e7 <+164>:   mov    $0x0,%eax
   0x00005555555556ec <+169>:   jmp    0x55555555569e <phase_3+91>
   0x00005555555556ee <+171>:   mov    $0x0,%eax
   0x00005555555556f3 <+176>:   jmp    0x5555555556a3 <phase_3+96>
   0x00005555555556f5 <+178>:   mov    $0x0,%eax
   0x00005555555556fa <+183>:   jmp    0x5555555556a8 <phase_3+101>
   0x00005555555556fc <+185>:   mov    $0x0,%eax
   0x0000555555555701 <+190>:   jmp    0x5555555556ad <phase_3+106>
   0x0000555555555703 <+192>:   mov    $0x0,%eax
   0x0000555555555708 <+197>:   jmp    0x5555555556b2 <phase_3+111>
   0x000055555555570a <+199>:   mov    $0x0,%eax
   0x000055555555570f <+204>:   jmp    0x5555555556b7 <phase_3+116>
   0x0000555555555711 <+206>:   mov    $0x0,%eax
   0x0000555555555716 <+211>:   jmp    0x5555555556bc <phase_3+121>
   0x0000555555555718 <+213>:   call   0x555555555bae <explode_bomb>
   0x000055555555571d <+218>:   mov    $0x0,%eax
   0x0000555555555722 <+223>:   jmp    0x5555555556c1 <phase_3+126>
   0x0000555555555724 <+225>:   call   0x555555555250 <__stack_chk_fail@plt>

0000000000001729 <func4>:
   0x0000555555555729 <+0>:     endbr64 
   0x000055555555572d <+4>:     mov    $0x0,%eax
   0x0000555555555732 <+9>:     test   %edi,%edi
   0x0000555555555734 <+11>:    jle    0x555555555763 <func4+58>
   0x0000555555555736 <+13>:    push   %r12
   0x0000555555555738 <+15>:    push   %rbp
   0x0000555555555739 <+16>:    push   %rbx
   0x000055555555573a <+17>:    mov    %edi,%ebx
   0x000055555555573c <+19>:    mov    %esi,%ebp
   0x000055555555573e <+21>:    mov    %esi,%eax
   0x0000555555555740 <+23>:    cmp    $0x1,%edi
   0x0000555555555743 <+26>:    je     0x55555555575e <func4+53>
   0x0000555555555745 <+28>:    lea    -0x1(%rdi),%edi
   0x0000555555555748 <+31>:    call   0x555555555729 <func4>
   0x000055555555574d <+36>:    lea    (%rax,%rbp,1),%r12d
   0x0000555555555751 <+40>:    lea    -0x2(%rbx),%edi
   0x0000555555555754 <+43>:    mov    %ebp,%esi
   0x0000555555555756 <+45>:    call   0x555555555729 <func4>
   0x000055555555575b <+50>:    add    %r12d,%eax
   0x000055555555575e <+53>:    pop    %rbx
   0x000055555555575f <+54>:    pop    %rbp
   0x0000555555555760 <+55>:    pop    %r12
   0x0000555555555762 <+57>:    ret    
   0x0000555555555763 <+58>:    ret

0000000000001764 <phase_4>:
   0x0000555555555764 <+0>:     endbr64 
   0x0000555555555768 <+4>:     sub    $0x18,%rsp
   0x000055555555576c <+8>:     mov    %fs:0x28,%rax
   0x0000555555555775 <+17>:    mov    %rax,0x8(%rsp)
   0x000055555555577a <+22>:    xor    %eax,%eax
   0x000055555555577c <+24>:    mov    %rsp,%rcx
   0x000055555555577f <+27>:    lea    0x4(%rsp),%rdx
   0x0000555555555784 <+32>:    lea    0x1bc5(%rip),%rsi        # 0x555555557350
   0x000055555555578b <+39>:    call   0x555555555300 <__isoc99_sscanf@plt>
   0x0000555555555790 <+44>:    cmp    $0x2,%eax
   0x0000555555555793 <+47>:    jne    0x5555555557a0 <phase_4+60> # jmp bomb
   0x0000555555555795 <+49>:    mov    (%rsp),%eax
   0x0000555555555798 <+52>:    sub    $0x2,%eax
   0x000055555555579b <+55>:    cmp    $0x2,%eax
   0x000055555555579e <+58>:    jbe    0x5555555557a5 <phase_4+65> # must jmp
   0x00005555555557a0 <+60>:    call   0x555555555bae <explode_bomb>
   0x00005555555557a5 <+65>:    mov    (%rsp),%esi
   0x00005555555557a8 <+68>:    mov    $0x6,%edi
   0x00005555555557ad <+73>:    call   0x555555555729 <func4>
   0x00005555555557b2 <+78>:    cmp    %eax,0x4(%rsp)
   0x00005555555557b6 <+82>:    jne    0x5555555557cd <phase_4+105> # jmp bomb
   0x00005555555557b8 <+84>:    mov    0x8(%rsp),%rax
   0x00005555555557bd <+89>:    sub    %fs:0x28,%rax
   0x00005555555557c6 <+98>:    jne    0x5555555557d4 <phase_4+112> # can not jmp,  equal 
   0x00005555555557c8 <+100>:   add    $0x18,%rsp
   0x00005555555557cc <+104>:   ret    
   0x00005555555557cd <+105>:   call   0x555555555bae <explode_bomb>
   0x00005555555557d2 <+110>:   jmp    0x5555555557b8 <phase_4+84>
   0x00005555555557d4 <+112>:   call   0x555555555250 <__stack_chk_fail@plt>

00000000000017d9 <phase_5>:
   0x00005555555557d9 <+0>:     endbr64 
   0x00005555555557dd <+4>:     push   %rbx
   0x00005555555557de <+5>:     mov    %rdi,%rbx
   0x00005555555557e1 <+8>:     call   0x555555555a79 <string_length>  
   0x00005555555557e6 <+13>:    cmp    $0x6,%eax
   0x00005555555557e9 <+16>:    jne    0x555555555817 <phase_5+62>  # jmp bomb
   0x00005555555557eb <+18>:    mov    %rbx,%rax
   0x00005555555557ee <+21>:    lea    0x6(%rbx),%rdi
   0x00005555555557f2 <+25>:    mov    $0x0,%ecx
   0x00005555555557f7 <+30>:    lea    0x1942(%rip),%rsi        # 0x555555557140 <array.0>
   0x00005555555557fe <+37>:    movzbl (%rax),%edx
   0x0000555555555801 <+40>:    and    $0xf,%edx
   0x0000555555555804 <+43>:    add    (%rsi,%rdx,4),%ecx
   0x0000555555555807 <+46>:    add    $0x1,%rax
   0x000055555555580b <+50>:    cmp    %rdi,%rax
   0x000055555555580e <+53>:    jne    0x5555555557fe <phase_5+37>
   0x0000555555555810 <+55>:    cmp    $0x3f,%ecx
   0x0000555555555813 <+58>:    jne    0x55555555581e <phase_5+69>  # jmp bomb
   0x0000555555555815 <+60>:    pop    %rbx
   0x0000555555555816 <+61>:    ret    
   0x0000555555555817 <+62>:    call   0x555555555bae <explode_bomb>
   0x000055555555581c <+67>:    jmp    0x5555555557eb <phase_5+18>
   0x000055555555581e <+69>:    call   0x555555555bae <explode_bomb>
   0x0000555555555823 <+74>:    jmp    0x555555555815 <phase_5+60>

0000000000001825 <phase_6>:
   0x0000555555555825 <+0>:     endbr64 
   0x0000555555555829 <+4>:     push   %r14
   0x000055555555582b <+6>:     push   %r13
   0x000055555555582d <+8>:     push   %r12
   0x000055555555582f <+10>:    push   %rbp
   0x0000555555555830 <+11>:    push   %rbx
   0x0000555555555831 <+12>:    sub    $0x60,%rsp
   0x0000555555555835 <+16>:    mov    %fs:0x28,%rax
   0x000055555555583e <+25>:    mov    %rax,0x58(%rsp)
   0x0000555555555843 <+30>:    xor    %eax,%eax
   0x0000555555555845 <+32>:    mov    %rsp,%r13
   0x0000555555555848 <+35>:    mov    %r13,%rsi
   0x000055555555584b <+38>:    call   0x555555555c06 <read_six_numbers>
   0x0000555555555850 <+43>:    mov    $0x1,%r14d
   0x0000555555555856 <+49>:    mov    %rsp,%r12
   0x0000555555555859 <+52>:    jmp    0x555555555883 <phase_6+94> # must jmp
   0x000055555555585b <+54>:    call   0x555555555bae <explode_bomb>

   0x0000555555555860 <+59>:    jmp    0x555555555892 <phase_6+109>
   0x0000555555555862 <+61>:    add    $0x1,%rbx
   0x0000555555555866 <+65>:    cmp    $0x5,%ebx
   0x0000555555555869 <+68>:    jg     0x55555555587b <phase_6+86>
   0x000055555555586b <+70>:    mov    (%r12,%rbx,4),%eax
   0x000055555555586f <+74>:    cmp    %eax,0x0(%rbp)
   0x0000555555555872 <+77>:    jne    0x555555555862 <phase_6+61> # must jmp
   0x0000555555555874 <+79>:    call   0x555555555bae <explode_bomb>
   0x0000555555555879 <+84>:    jmp    0x555555555862 <phase_6+61>
   0x000055555555587b <+86>:    add    $0x1,%r14
   0x000055555555587f <+90>:    add    $0x4,%r13

   0x0000555555555883 <+94>:    mov    %r13,%rbp
   0x0000555555555886 <+97>:    mov    0x0(%r13),%eax
   0x000055555555588a <+101>:   sub    $0x1,%eax
   0x000055555555588d <+104>:   cmp    $0x5,%eax
   0x0000555555555890 <+107>:   ja     0x55555555585b <phase_6+54> # jmp bomb
   0x0000555555555892 <+109>:   cmp    $0x5,%r14d
   0x0000555555555896 <+113>:   jg     0x55555555589d <phase_6+120>

   0x0000555555555898 <+115>:   mov    %r14,%rbx
   0x000055555555589b <+118>:   jmp    0x55555555586b <phase_6+70>
   
   0x000055555555589d <+120>:   mov    $0x0,%esi
   0x00005555555558a2 <+125>:   mov    (%rsp,%rsi,4),%ecx
   0x00005555555558a5 <+128>:   mov    $0x1,%eax
   0x00005555555558aa <+133>:   lea    0x395f(%rip),%rdx        # 0x555555559210 <node1>
   0x00005555555558b1 <+140>:   cmp    $0x1,%ecx
   0x00005555555558b4 <+143>:   jle    0x5555555558c1 <phase_6+156>
   0x00005555555558b6 <+145>:   mov    0x8(%rdx),%rdx
   0x00005555555558ba <+149>:   add    $0x1,%eax
   0x00005555555558bd <+152>:   cmp    %ecx,%eax
   0x00005555555558bf <+154>:   jne    0x5555555558b6 <phase_6+145>
   0x00005555555558c1 <+156>:   mov    %rdx,0x20(%rsp,%rsi,8)
   0x00005555555558c6 <+161>:   add    $0x1,%rsi
   0x00005555555558ca <+165>:   cmp    $0x6,%rsi
   0x00005555555558ce <+169>:   jne    0x5555555558a2 <phase_6+125>
   0x00005555555558d0 <+171>:   mov    0x20(%rsp),%rbx
   0x00005555555558d5 <+176>:   mov    0x28(%rsp),%rax
   0x00005555555558da <+181>:   mov    %rax,0x8(%rbx)
   0x00005555555558de <+185>:   mov    0x30(%rsp),%rdx
   0x00005555555558e3 <+190>:   mov    %rdx,0x8(%rax)
   0x00005555555558e7 <+194>:   mov    0x38(%rsp),%rax
   0x00005555555558ec <+199>:   mov    %rax,0x8(%rdx)
   0x00005555555558f0 <+203>:   mov    0x40(%rsp),%rdxn
   0x00005555555558f5 <+208>:   mov    %rdx,0x8(%rax)
   0x00005555555558f9 <+212>:   mov    0x48(%rsp),%rax
   0x00005555555558fe <+217>:   mov    %rax,0x8(%rdx)
   0x0000555555555902 <+221>:   movq   $0x0,0x8(%rax)
   0x000055555555590a <+229>:   mov    $0x5,%ebp
   0x000055555555590f <+234>:   jmp    0x55555555591a <phase_6+245>
   0x0000555555555911 <+236>:   mov    0x8(%rbx),%rbx
   0x0000555555555915 <+240>:   sub    $0x1,%ebp
   0x0000555555555918 <+243>:   je     0x55555555592b <phase_6+262>
   0x000055555555591a <+245>:   mov    0x8(%rbx),%rax
   0x000055555555591e <+249>:   mov    (%rax),%eax
   0x0000555555555920 <+251>:   cmp    %eax,(%rbx)
   0x0000555555555922 <+253>:   jge    0x555555555911 <phase_6+236>
   0x0000555555555924 <+255>:   call   0x555555555bae <explode_bomb>
   0x0000555555555929 <+260>:   jmp    0x555555555911 <phase_6+236>
   0x000055555555592b <+262>:   mov    0x58(%rsp),%rax
   0x0000555555555930 <+267>:   sub    %fs:0x28,%rax
   0x0000555555555939 <+276>:   jne    0x555555555948 <phase_6+291>
   0x000055555555593b <+278>:   add    $0x60,%rsp
   0x000055555555593f <+282>:   pop    %rbx
   0x0000555555555940 <+283>:   pop    %rbp
   0x0000555555555941 <+284>:   pop    %r12
   0x0000555555555943 <+286>:   pop    %r13
   0x0000555555555945 <+288>:   pop    %r14
   0x0000555555555947 <+290>:   ret    
   0x0000555555555948 <+291>:   call   0x555555555250 <__stack_chk_fail@plt>


000000000000194d <fun7>:
    194d:	f3 0f 1e fa          	endbr64 
    1951:	48 85 ff             	test   %rdi,%rdi
    1954:	74 32                	je     1988 <fun7+0x3b>
    1956:	48 83 ec 08          	sub    $0x8,%rsp
    195a:	8b 17                	mov    (%rdi),%edx
    195c:	39 f2                	cmp    %esi,%edx
    195e:	7f 0c                	jg     196c <fun7+0x1f>
    1960:	b8 00 00 00 00       	mov    $0x0,%eax
    1965:	75 12                	jne    1979 <fun7+0x2c>
    1967:	48 83 c4 08          	add    $0x8,%rsp
    196b:	c3                   	ret    
    196c:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1970:	e8 d8 ff ff ff       	call   194d <fun7>
    1975:	01 c0                	add    %eax,%eax
    1977:	eb ee                	jmp    1967 <fun7+0x1a>
    1979:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    197d:	e8 cb ff ff ff       	call   194d <fun7>
    1982:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1986:	eb df                	jmp    1967 <fun7+0x1a>
    1988:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    198d:	c3                   	ret    

000000000000198e <secret_phase>:
    198e:	f3 0f 1e fa          	endbr64 
    1992:	53                   	push   %rbx
    1993:	e8 b3 02 00 00       	call   1c4b <read_line>
    1998:	48 89 c7             	mov    %rax,%rdi
    199b:	ba 0a 00 00 00       	mov    $0xa,%edx
    19a0:	be 00 00 00 00       	mov    $0x0,%esi
    19a5:	e8 36 f9 ff ff       	call   12e0 <strtol@plt>
    19aa:	89 c3                	mov    %eax,%ebx
    19ac:	83 e8 01             	sub    $0x1,%eax
    19af:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    19b4:	77 26                	ja     19dc <secret_phase+0x4e>
    19b6:	89 de                	mov    %ebx,%esi
    19b8:	48 8d 3d 71 37 00 00 	lea    0x3771(%rip),%rdi        # 5130 <n1>
    19bf:	e8 89 ff ff ff       	call   194d <fun7>
    19c4:	83 f8 06             	cmp    $0x6,%eax
    19c7:	75 1a                	jne    19e3 <secret_phase+0x55>
    19c9:	48 8d 3d 10 17 00 00 	lea    0x1710(%rip),%rdi        # 30e0 <_IO_stdin_used+0xe0>
    19d0:	e8 4b f8 ff ff       	call   1220 <puts@plt>
    19d5:	e8 c5 03 00 00       	call   1d9f <phase_defused>
    19da:	5b                   	pop    %rbx
    19db:	c3                   	ret    
    19dc:	e8 cd 01 00 00       	call   1bae <explode_bomb>
    19e1:	eb d3                	jmp    19b6 <secret_phase+0x28>
    19e3:	e8 c6 01 00 00       	call   1bae <explode_bomb>
    19e8:	eb df                	jmp    19c9 <secret_phase+0x3b>

00000000000019ea <sig_handler>:
    19ea:	f3 0f 1e fa          	endbr64 
    19ee:	50                   	push   %rax
    19ef:	58                   	pop    %rax
    19f0:	48 83 ec 08          	sub    $0x8,%rsp
    19f4:	48 8d 3d 85 17 00 00 	lea    0x1785(%rip),%rdi        # 3180 <array.0+0x40>
    19fb:	e8 20 f8 ff ff       	call   1220 <puts@plt>
    1a00:	bf 03 00 00 00       	mov    $0x3,%edi
    1a05:	e8 56 f9 ff ff       	call   1360 <sleep@plt>
    1a0a:	48 8d 35 09 19 00 00 	lea    0x1909(%rip),%rsi        # 331a <array.0+0x1da>
    1a11:	bf 01 00 00 00       	mov    $0x1,%edi
    1a16:	b8 00 00 00 00       	mov    $0x0,%eax
    1a1b:	e8 f0 f8 ff ff       	call   1310 <__printf_chk@plt>
    1a20:	48 8b 3d 39 3c 00 00 	mov    0x3c39(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    1a27:	e8 c4 f8 ff ff       	call   12f0 <fflush@plt>
    1a2c:	bf 01 00 00 00       	mov    $0x1,%edi
    1a31:	e8 2a f9 ff ff       	call   1360 <sleep@plt>
    1a36:	48 8d 3d e5 18 00 00 	lea    0x18e5(%rip),%rdi        # 3322 <array.0+0x1e2>
    1a3d:	e8 de f7 ff ff       	call   1220 <puts@plt>
    1a42:	bf 10 00 00 00       	mov    $0x10,%edi
    1a47:	e8 e4 f8 ff ff       	call   1330 <exit@plt>

0000000000001a4c <invalid_phase>:
    1a4c:	f3 0f 1e fa          	endbr64 
    1a50:	50                   	push   %rax
    1a51:	58                   	pop    %rax
    1a52:	48 83 ec 08          	sub    $0x8,%rsp
    1a56:	48 89 fa             	mov    %rdi,%rdx
    1a59:	48 8d 35 ca 18 00 00 	lea    0x18ca(%rip),%rsi        # 332a <array.0+0x1ea>
    1a60:	bf 01 00 00 00       	mov    $0x1,%edi
    1a65:	b8 00 00 00 00       	mov    $0x0,%eax
    1a6a:	e8 a1 f8 ff ff       	call   1310 <__printf_chk@plt>
    1a6f:	bf 08 00 00 00       	mov    $0x8,%edi
    1a74:	e8 b7 f8 ff ff       	call   1330 <exit@plt>

0000000000001a79 <string_length>:
    1a79:	f3 0f 1e fa          	endbr64 
    1a7d:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a80:	74 12                	je     1a94 <string_length+0x1b>
    1a82:	b8 00 00 00 00       	mov    $0x0,%eax
    1a87:	48 83 c7 01          	add    $0x1,%rdi
    1a8b:	83 c0 01             	add    $0x1,%eax
    1a8e:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a91:	75 f4                	jne    1a87 <string_length+0xe>
    1a93:	c3                   	ret    
    1a94:	b8 00 00 00 00       	mov    $0x0,%eax
    1a99:	c3                   	ret    

0000000000001a9a <strings_not_equal>:
    1a9a:	f3 0f 1e fa          	endbr64 
    1a9e:	41 54                	push   %r12
    1aa0:	55                   	push   %rbp
    1aa1:	53                   	push   %rbx
    1aa2:	48 89 fb             	mov    %rdi,%rbx
    1aa5:	48 89 f5             	mov    %rsi,%rbp
    1aa8:	e8 cc ff ff ff       	call   1a79 <string_length>
    1aad:	41 89 c4             	mov    %eax,%r12d
    1ab0:	48 89 ef             	mov    %rbp,%rdi
    1ab3:	e8 c1 ff ff ff       	call   1a79 <string_length>
    1ab8:	89 c2                	mov    %eax,%edx
    1aba:	b8 01 00 00 00       	mov    $0x1,%eax
    1abf:	41 39 d4             	cmp    %edx,%r12d
    1ac2:	75 31                	jne    1af5 <strings_not_equal+0x5b>
    1ac4:	0f b6 13             	movzbl (%rbx),%edx
    1ac7:	84 d2                	test   %dl,%dl
    1ac9:	74 1e                	je     1ae9 <strings_not_equal+0x4f>
    1acb:	b8 00 00 00 00       	mov    $0x0,%eax
    1ad0:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1ad4:	75 1a                	jne    1af0 <strings_not_equal+0x56>
    1ad6:	48 83 c0 01          	add    $0x1,%rax
    1ada:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1ade:	84 d2                	test   %dl,%dl
    1ae0:	75 ee                	jne    1ad0 <strings_not_equal+0x36>
    1ae2:	b8 00 00 00 00       	mov    $0x0,%eax
    1ae7:	eb 0c                	jmp    1af5 <strings_not_equal+0x5b>
    1ae9:	b8 00 00 00 00       	mov    $0x0,%eax
    1aee:	eb 05                	jmp    1af5 <strings_not_equal+0x5b>
    1af0:	b8 01 00 00 00       	mov    $0x1,%eax
    1af5:	5b                   	pop    %rbx
    1af6:	5d                   	pop    %rbp
    1af7:	41 5c                	pop    %r12
    1af9:	c3                   	ret    

0000000000001afa <initialize_bomb>:
    1afa:	f3 0f 1e fa          	endbr64 
    1afe:	48 83 ec 08          	sub    $0x8,%rsp
    1b02:	48 8d 35 e1 fe ff ff 	lea    -0x11f(%rip),%rsi        # 19ea <sig_handler>
    1b09:	bf 02 00 00 00       	mov    $0x2,%edi
    1b0e:	e8 9d f7 ff ff       	call   12b0 <signal@plt>
    1b13:	48 83 c4 08          	add    $0x8,%rsp
    1b17:	c3                   	ret    

0000000000001b18 <initialize_bomb_solve>:
    1b18:	f3 0f 1e fa          	endbr64 
    1b1c:	c3                   	ret    

0000000000001b1d <blank_line>:
    1b1d:	f3 0f 1e fa          	endbr64 
    1b21:	55                   	push   %rbp
    1b22:	53                   	push   %rbx
    1b23:	48 83 ec 08          	sub    $0x8,%rsp
    1b27:	48 89 fd             	mov    %rdi,%rbp
    1b2a:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1b2e:	84 db                	test   %bl,%bl
    1b30:	74 1e                	je     1b50 <blank_line+0x33>
    1b32:	e8 39 f8 ff ff       	call   1370 <__ctype_b_loc@plt>
    1b37:	48 83 c5 01          	add    $0x1,%rbp
    1b3b:	48 0f be db          	movsbq %bl,%rbx
    1b3f:	48 8b 00             	mov    (%rax),%rax
    1b42:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1b47:	75 e1                	jne    1b2a <blank_line+0xd>
    1b49:	b8 00 00 00 00       	mov    $0x0,%eax
    1b4e:	eb 05                	jmp    1b55 <blank_line+0x38>
    1b50:	b8 01 00 00 00       	mov    $0x1,%eax
    1b55:	48 83 c4 08          	add    $0x8,%rsp
    1b59:	5b                   	pop    %rbx
    1b5a:	5d                   	pop    %rbp
    1b5b:	c3                   	ret    

0000000000001b5c <skip>:
    1b5c:	f3 0f 1e fa          	endbr64 
    1b60:	55                   	push   %rbp
    1b61:	53                   	push   %rbx
    1b62:	48 83 ec 08          	sub    $0x8,%rsp
    1b66:	48 8d 2d 93 3b 00 00 	lea    0x3b93(%rip),%rbp        # 5700 <input_strings>
    1b6d:	48 63 05 80 3b 00 00 	movslq 0x3b80(%rip),%rax        # 56f4 <num_input_strings>
    1b74:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1b78:	48 c1 e7 04          	shl    $0x4,%rdi
    1b7c:	48 01 ef             	add    %rbp,%rdi
    1b7f:	48 8b 15 0a 3b 00 00 	mov    0x3b0a(%rip),%rdx        # 5690 <infile>
    1b86:	be 50 00 00 00       	mov    $0x50,%esi
    1b8b:	e8 00 f7 ff ff       	call   1290 <fgets@plt>
    1b90:	48 89 c3             	mov    %rax,%rbx
    1b93:	48 85 c0             	test   %rax,%rax
    1b96:	74 0c                	je     1ba4 <skip+0x48>
    1b98:	48 89 c7             	mov    %rax,%rdi
    1b9b:	e8 7d ff ff ff       	call   1b1d <blank_line>
    1ba0:	85 c0                	test   %eax,%eax
    1ba2:	75 c9                	jne    1b6d <skip+0x11>
    1ba4:	48 89 d8             	mov    %rbx,%rax
    1ba7:	48 83 c4 08          	add    $0x8,%rsp
    1bab:	5b                   	pop    %rbx
    1bac:	5d                   	pop    %rbp
    1bad:	c3                   	ret    

0000000000001bae <explode_bomb>:
    1bae:	f3 0f 1e fa          	endbr64 
    1bb2:	50                   	push   %rax
    1bb3:	58                   	pop    %rax
    1bb4:	48 83 ec 08          	sub    $0x8,%rsp
    1bb8:	48 8d 3d 7c 17 00 00 	lea    0x177c(%rip),%rdi        # 333b <array.0+0x1fb>
    1bbf:	e8 5c f6 ff ff       	call   1220 <puts@plt>
    1bc4:	8b 15 2a 3b 00 00    	mov    0x3b2a(%rip),%edx        # 56f4 <num_input_strings>
    1bca:	48 8d 35 e7 15 00 00 	lea    0x15e7(%rip),%rsi        # 31b8 <array.0+0x78>
    1bd1:	bf 01 00 00 00       	mov    $0x1,%edi
    1bd6:	b8 00 00 00 00       	mov    $0x0,%eax
    1bdb:	e8 30 f7 ff ff       	call   1310 <__printf_chk@plt>
    1be0:	8b 15 0a 3b 00 00    	mov    0x3b0a(%rip),%edx        # 56f0 <score>
    1be6:	48 8d 35 f3 15 00 00 	lea    0x15f3(%rip),%rsi        # 31e0 <array.0+0xa0>
    1bed:	bf 01 00 00 00       	mov    $0x1,%edi
    1bf2:	b8 00 00 00 00       	mov    $0x0,%eax
    1bf7:	e8 14 f7 ff ff       	call   1310 <__printf_chk@plt>
    1bfc:	bf 08 00 00 00       	mov    $0x8,%edi
    1c01:	e8 2a f7 ff ff       	call   1330 <exit@plt>

0000000000001c06 <read_six_numbers>:
    1c06:	f3 0f 1e fa          	endbr64 
    1c0a:	48 83 ec 08          	sub    $0x8,%rsp
    1c0e:	48 89 f2             	mov    %rsi,%rdx
    1c11:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1c15:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1c19:	50                   	push   %rax
    1c1a:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1c1e:	50                   	push   %rax
    1c1f:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1c23:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1c27:	48 8d 35 16 17 00 00 	lea    0x1716(%rip),%rsi        # 3344 <array.0+0x204>
    1c2e:	b8 00 00 00 00       	mov    $0x0,%eax
    1c33:	e8 c8 f6 ff ff       	call   1300 <__isoc99_sscanf@plt>
    1c38:	48 83 c4 10          	add    $0x10,%rsp
    1c3c:	83 f8 05             	cmp    $0x5,%eax
    1c3f:	7e 05                	jle    1c46 <read_six_numbers+0x40>
    1c41:	48 83 c4 08          	add    $0x8,%rsp
    1c45:	c3                   	ret    
    1c46:	e8 63 ff ff ff       	call   1bae <explode_bomb>

0000000000001c4b <read_line>:
    1c4b:	f3 0f 1e fa          	endbr64 
    1c4f:	55                   	push   %rbp
    1c50:	53                   	push   %rbx
    1c51:	48 83 ec 08          	sub    $0x8,%rsp
    1c55:	b8 00 00 00 00       	mov    $0x0,%eax
    1c5a:	e8 fd fe ff ff       	call   1b5c <skip>
    1c5f:	48 85 c0             	test   %rax,%rax
    1c62:	74 5d                	je     1cc1 <read_line+0x76>
    1c64:	8b 2d 8a 3a 00 00    	mov    0x3a8a(%rip),%ebp        # 56f4 <num_input_strings>
    1c6a:	48 63 c5             	movslq %ebp,%rax
    1c6d:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    1c71:	48 c1 e3 04          	shl    $0x4,%rbx
    1c75:	48 8d 05 84 3a 00 00 	lea    0x3a84(%rip),%rax        # 5700 <input_strings>
    1c7c:	48 01 c3             	add    %rax,%rbx
    1c7f:	48 89 df             	mov    %rbx,%rdi
    1c82:	e8 b9 f5 ff ff       	call   1240 <strlen@plt>
    1c87:	83 f8 4e             	cmp    $0x4e,%eax
    1c8a:	0f 8f c5 00 00 00    	jg     1d55 <read_line+0x10a>
    1c90:	83 e8 01             	sub    $0x1,%eax
    1c93:	48 98                	cltq   
    1c95:	48 63 d5             	movslq %ebp,%rdx
    1c98:	48 8d 0c 92          	lea    (%rdx,%rdx,4),%rcx
    1c9c:	48 c1 e1 04          	shl    $0x4,%rcx
    1ca0:	48 8d 15 59 3a 00 00 	lea    0x3a59(%rip),%rdx        # 5700 <input_strings>
    1ca7:	48 01 ca             	add    %rcx,%rdx
    1caa:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1cae:	83 c5 01             	add    $0x1,%ebp
    1cb1:	89 2d 3d 3a 00 00    	mov    %ebp,0x3a3d(%rip)        # 56f4 <num_input_strings>
    1cb7:	48 89 d8             	mov    %rbx,%rax
    1cba:	48 83 c4 08          	add    $0x8,%rsp
    1cbe:	5b                   	pop    %rbx
    1cbf:	5d                   	pop    %rbp
    1cc0:	c3                   	ret    
    1cc1:	48 8b 05 a8 39 00 00 	mov    0x39a8(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    1cc8:	48 39 05 c1 39 00 00 	cmp    %rax,0x39c1(%rip)        # 5690 <infile>
    1ccf:	74 1b                	je     1cec <read_line+0xa1>
    1cd1:	48 8d 3d 9c 16 00 00 	lea    0x169c(%rip),%rdi        # 3374 <array.0+0x234>
    1cd8:	e8 13 f5 ff ff       	call   11f0 <getenv@plt>
    1cdd:	48 85 c0             	test   %rax,%rax
    1ce0:	74 3c                	je     1d1e <read_line+0xd3>
    1ce2:	bf 00 00 00 00       	mov    $0x0,%edi
    1ce7:	e8 44 f6 ff ff       	call   1330 <exit@plt>
    1cec:	48 8d 3d 63 16 00 00 	lea    0x1663(%rip),%rdi        # 3356 <array.0+0x216>
    1cf3:	e8 28 f5 ff ff       	call   1220 <puts@plt>
    1cf8:	8b 15 f2 39 00 00    	mov    0x39f2(%rip),%edx        # 56f0 <score>
    1cfe:	48 8d 35 0b 15 00 00 	lea    0x150b(%rip),%rsi        # 3210 <array.0+0xd0>
    1d05:	bf 01 00 00 00       	mov    $0x1,%edi
    1d0a:	b8 00 00 00 00       	mov    $0x0,%eax
    1d0f:	e8 fc f5 ff ff       	call   1310 <__printf_chk@plt>
    1d14:	bf 08 00 00 00       	mov    $0x8,%edi
    1d19:	e8 12 f6 ff ff       	call   1330 <exit@plt>
    1d1e:	48 8b 05 4b 39 00 00 	mov    0x394b(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    1d25:	48 89 05 64 39 00 00 	mov    %rax,0x3964(%rip)        # 5690 <infile>
    1d2c:	b8 00 00 00 00       	mov    $0x0,%eax
    1d31:	e8 26 fe ff ff       	call   1b5c <skip>
    1d36:	48 85 c0             	test   %rax,%rax
    1d39:	0f 85 25 ff ff ff    	jne    1c64 <read_line+0x19>
    1d3f:	48 8d 3d 10 16 00 00 	lea    0x1610(%rip),%rdi        # 3356 <array.0+0x216>
    1d46:	e8 d5 f4 ff ff       	call   1220 <puts@plt>
    1d4b:	bf 00 00 00 00       	mov    $0x0,%edi
    1d50:	e8 db f5 ff ff       	call   1330 <exit@plt>
    1d55:	48 8d 3d 23 16 00 00 	lea    0x1623(%rip),%rdi        # 337f <array.0+0x23f>
    1d5c:	e8 bf f4 ff ff       	call   1220 <puts@plt>
    1d61:	8b 05 8d 39 00 00    	mov    0x398d(%rip),%eax        # 56f4 <num_input_strings>
    1d67:	8d 50 01             	lea    0x1(%rax),%edx
    1d6a:	89 15 84 39 00 00    	mov    %edx,0x3984(%rip)        # 56f4 <num_input_strings>
    1d70:	48 98                	cltq   
    1d72:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1d76:	48 8d 15 83 39 00 00 	lea    0x3983(%rip),%rdx        # 5700 <input_strings>
    1d7d:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1d84:	75 6e 63 
    1d87:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1d8e:	2a 2a 00 
    1d91:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1d95:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1d9a:	e8 0f fe ff ff       	call   1bae <explode_bomb>

0000000000001d9f <phase_defused>:
    1d9f:	f3 0f 1e fa          	endbr64 
    1da3:	48 83 ec 78          	sub    $0x78,%rsp
    1da7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1dae:	00 00 
    1db0:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1db5:	31 c0                	xor    %eax,%eax
    1db7:	8b 15 37 39 00 00    	mov    0x3937(%rip),%edx        # 56f4 <num_input_strings>
    1dbd:	83 fa 03             	cmp    $0x3,%edx
    1dc0:	7f 5b                	jg     1e1d <phase_defused+0x7e>
    1dc2:	83 05 27 39 00 00 1e 	addl   $0x1e,0x3927(%rip)        # 56f0 <score>
    1dc9:	48 8d 35 ca 15 00 00 	lea    0x15ca(%rip),%rsi        # 339a <array.0+0x25a>
    1dd0:	bf 01 00 00 00       	mov    $0x1,%edi
    1dd5:	b8 00 00 00 00       	mov    $0x0,%eax
    1dda:	e8 31 f5 ff ff       	call   1310 <__printf_chk@plt>
    1ddf:	8b 15 0b 39 00 00    	mov    0x390b(%rip),%edx        # 56f0 <score>
    1de5:	48 8d 35 24 14 00 00 	lea    0x1424(%rip),%rsi        # 3210 <array.0+0xd0>
    1dec:	bf 01 00 00 00       	mov    $0x1,%edi
    1df1:	b8 00 00 00 00       	mov    $0x0,%eax
    1df6:	e8 15 f5 ff ff       	call   1310 <__printf_chk@plt>
    1dfb:	83 3d f2 38 00 00 06 	cmpl   $0x6,0x38f2(%rip)        # 56f4 <num_input_strings>
    1e02:	74 27                	je     1e2b <phase_defused+0x8c>
    1e04:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1e09:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1e10:	00 00 
    1e12:	0f 85 9e 00 00 00    	jne    1eb6 <phase_defused+0x117>
    1e18:	48 83 c4 78          	add    $0x78,%rsp
    1e1c:	c3                   	ret    
    1e1d:	83 fa 04             	cmp    $0x4,%edx
    1e20:	75 a7                	jne    1dc9 <phase_defused+0x2a>
    1e22:	83 05 c7 38 00 00 0a 	addl   $0xa,0x38c7(%rip)        # 56f0 <score>
    1e29:	eb 9e                	jmp    1dc9 <phase_defused+0x2a>
    1e2b:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1e30:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1e35:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1e3a:	48 8d 35 77 15 00 00 	lea    0x1577(%rip),%rsi        # 33b8 <array.0+0x278>
    1e41:	48 8d 3d a8 39 00 00 	lea    0x39a8(%rip),%rdi        # 57f0 <input_strings+0xf0>
    1e48:	b8 00 00 00 00       	mov    $0x0,%eax
    1e4d:	e8 ae f4 ff ff       	call   1300 <__isoc99_sscanf@plt>
    1e52:	83 f8 03             	cmp    $0x3,%eax
    1e55:	74 1a                	je     1e71 <phase_defused+0xd2>
    1e57:	48 8d 3d 92 14 00 00 	lea    0x1492(%rip),%rdi        # 32f0 <array.0+0x1b0>
    1e5e:	e8 bd f3 ff ff       	call   1220 <puts@plt>
    1e63:	48 8d 3d 5e 15 00 00 	lea    0x155e(%rip),%rdi        # 33c8 <array.0+0x288>
    1e6a:	e8 b1 f3 ff ff       	call   1220 <puts@plt>
    1e6f:	eb 93                	jmp    1e04 <phase_defused+0x65>
    1e71:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1e76:	48 8d 35 44 15 00 00 	lea    0x1544(%rip),%rsi        # 33c1 <array.0+0x281>
    1e7d:	e8 18 fc ff ff       	call   1a9a <strings_not_equal>
    1e82:	85 c0                	test   %eax,%eax
    1e84:	75 d1                	jne    1e57 <phase_defused+0xb8>
    1e86:	48 8d 3d ab 13 00 00 	lea    0x13ab(%rip),%rdi        # 3238 <array.0+0xf8>
    1e8d:	e8 8e f3 ff ff       	call   1220 <puts@plt>
    1e92:	48 8d 3d c7 13 00 00 	lea    0x13c7(%rip),%rdi        # 3260 <array.0+0x120>
    1e99:	e8 82 f3 ff ff       	call   1220 <puts@plt>
    1e9e:	b8 00 00 00 00       	mov    $0x0,%eax
    1ea3:	e8 e6 fa ff ff       	call   198e <secret_phase>
    1ea8:	48 8d 3d e9 13 00 00 	lea    0x13e9(%rip),%rdi        # 3298 <array.0+0x158>
    1eaf:	e8 6c f3 ff ff       	call   1220 <puts@plt>
    1eb4:	eb a1                	jmp    1e57 <phase_defused+0xb8>
    1eb6:	e8 95 f3 ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001ebb <sigalrm_handler>:
    1ebb:	f3 0f 1e fa          	endbr64 
    1ebf:	50                   	push   %rax
    1ec0:	58                   	pop    %rax
    1ec1:	48 83 ec 08          	sub    $0x8,%rsp
    1ec5:	b9 00 00 00 00       	mov    $0x0,%ecx
    1eca:	48 8d 15 6f 15 00 00 	lea    0x156f(%rip),%rdx        # 3440 <array.0+0x300>
    1ed1:	be 01 00 00 00       	mov    $0x1,%esi
    1ed6:	48 8b 3d a3 37 00 00 	mov    0x37a3(%rip),%rdi        # 5680 <stderr@GLIBC_2.2.5>
    1edd:	b8 00 00 00 00       	mov    $0x0,%eax
    1ee2:	e8 69 f4 ff ff       	call   1350 <__fprintf_chk@plt>
    1ee7:	bf 01 00 00 00       	mov    $0x1,%edi
    1eec:	e8 3f f4 ff ff       	call   1330 <exit@plt>

0000000000001ef1 <rio_readlineb>:
    1ef1:	41 56                	push   %r14
    1ef3:	41 55                	push   %r13
    1ef5:	41 54                	push   %r12
    1ef7:	55                   	push   %rbp
    1ef8:	53                   	push   %rbx
    1ef9:	49 89 f4             	mov    %rsi,%r12
    1efc:	48 83 fa 01          	cmp    $0x1,%rdx
    1f00:	0f 86 92 00 00 00    	jbe    1f98 <rio_readlineb+0xa7>
    1f06:	48 89 fb             	mov    %rdi,%rbx
    1f09:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1f0e:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1f14:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1f18:	eb 56                	jmp    1f70 <rio_readlineb+0x7f>
    1f1a:	e8 e1 f2 ff ff       	call   1200 <__errno_location@plt>
    1f1f:	83 38 04             	cmpl   $0x4,(%rax)
    1f22:	75 55                	jne    1f79 <rio_readlineb+0x88>
    1f24:	ba 00 20 00 00       	mov    $0x2000,%edx
    1f29:	48 89 ee             	mov    %rbp,%rsi
    1f2c:	8b 3b                	mov    (%rbx),%edi
    1f2e:	e8 4d f3 ff ff       	call   1280 <read@plt>
    1f33:	89 c2                	mov    %eax,%edx
    1f35:	89 43 04             	mov    %eax,0x4(%rbx)
    1f38:	85 c0                	test   %eax,%eax
    1f3a:	78 de                	js     1f1a <rio_readlineb+0x29>
    1f3c:	85 c0                	test   %eax,%eax
    1f3e:	74 42                	je     1f82 <rio_readlineb+0x91>
    1f40:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1f44:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1f48:	0f b6 08             	movzbl (%rax),%ecx
    1f4b:	48 83 c0 01          	add    $0x1,%rax
    1f4f:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1f53:	83 ea 01             	sub    $0x1,%edx
    1f56:	89 53 04             	mov    %edx,0x4(%rbx)
    1f59:	49 83 c4 01          	add    $0x1,%r12
    1f5d:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1f62:	80 f9 0a             	cmp    $0xa,%cl
    1f65:	74 3c                	je     1fa3 <rio_readlineb+0xb2>
    1f67:	41 83 c5 01          	add    $0x1,%r13d
    1f6b:	4d 39 f4             	cmp    %r14,%r12
    1f6e:	74 30                	je     1fa0 <rio_readlineb+0xaf>
    1f70:	8b 53 04             	mov    0x4(%rbx),%edx
    1f73:	85 d2                	test   %edx,%edx
    1f75:	7e ad                	jle    1f24 <rio_readlineb+0x33>
    1f77:	eb cb                	jmp    1f44 <rio_readlineb+0x53>
    1f79:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f80:	eb 05                	jmp    1f87 <rio_readlineb+0x96>
    1f82:	b8 00 00 00 00       	mov    $0x0,%eax
    1f87:	85 c0                	test   %eax,%eax
    1f89:	75 29                	jne    1fb4 <rio_readlineb+0xc3>
    1f8b:	b8 00 00 00 00       	mov    $0x0,%eax
    1f90:	41 83 fd 01          	cmp    $0x1,%r13d
    1f94:	75 0d                	jne    1fa3 <rio_readlineb+0xb2>
    1f96:	eb 13                	jmp    1fab <rio_readlineb+0xba>
    1f98:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1f9e:	eb 03                	jmp    1fa3 <rio_readlineb+0xb2>
    1fa0:	4d 89 f4             	mov    %r14,%r12
    1fa3:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1fa8:	49 63 c5             	movslq %r13d,%rax
    1fab:	5b                   	pop    %rbx
    1fac:	5d                   	pop    %rbp
    1fad:	41 5c                	pop    %r12
    1faf:	41 5d                	pop    %r13
    1fb1:	41 5e                	pop    %r14
    1fb3:	c3                   	ret    
    1fb4:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1fbb:	eb ee                	jmp    1fab <rio_readlineb+0xba>

0000000000001fbd <submitr>:
    1fbd:	f3 0f 1e fa          	endbr64 
    1fc1:	41 57                	push   %r15
    1fc3:	41 56                	push   %r14
    1fc5:	41 55                	push   %r13
    1fc7:	41 54                	push   %r12
    1fc9:	55                   	push   %rbp
    1fca:	53                   	push   %rbx
    1fcb:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    1fd2:	ff 
    1fd3:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1fda:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1fdf:	4c 39 dc             	cmp    %r11,%rsp
    1fe2:	75 ef                	jne    1fd3 <submitr+0x16>
    1fe4:	48 83 ec 78          	sub    $0x78,%rsp
    1fe8:	49 89 fd             	mov    %rdi,%r13
    1feb:	89 f5                	mov    %esi,%ebp
    1fed:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1ff2:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1ff7:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    1ffc:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    2001:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    2008:	00 
    2009:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    2010:	00 
    2011:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2018:	00 00 
    201a:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    2021:	00 
    2022:	31 c0                	xor    %eax,%eax
    2024:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    202b:	00 
    202c:	ba 00 00 00 00       	mov    $0x0,%edx
    2031:	be 01 00 00 00       	mov    $0x1,%esi
    2036:	bf 02 00 00 00       	mov    $0x2,%edi
    203b:	e8 50 f3 ff ff       	call   1390 <socket@plt>
    2040:	85 c0                	test   %eax,%eax
    2042:	0f 88 12 01 00 00    	js     215a <submitr+0x19d>
    2048:	41 89 c4             	mov    %eax,%r12d
    204b:	4c 89 ef             	mov    %r13,%rdi
    204e:	e8 6d f2 ff ff       	call   12c0 <gethostbyname@plt>
    2053:	48 85 c0             	test   %rax,%rax
    2056:	0f 84 4e 01 00 00    	je     21aa <submitr+0x1ed>
    205c:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    2061:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    2068:	00 00 
    206a:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    2071:	00 00 
    2073:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    207a:	48 63 50 14          	movslq 0x14(%rax),%rdx
    207e:	48 8b 40 18          	mov    0x18(%rax),%rax
    2082:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    2087:	b9 0c 00 00 00       	mov    $0xc,%ecx
    208c:	48 8b 30             	mov    (%rax),%rsi
    208f:	e8 3c f2 ff ff       	call   12d0 <__memmove_chk@plt>
    2094:	66 c1 c5 08          	rol    $0x8,%bp
    2098:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    209d:	ba 10 00 00 00       	mov    $0x10,%edx
    20a2:	4c 89 ee             	mov    %r13,%rsi
    20a5:	44 89 e7             	mov    %r12d,%edi
    20a8:	e8 93 f2 ff ff       	call   1340 <connect@plt>
    20ad:	85 c0                	test   %eax,%eax
    20af:	0f 88 60 01 00 00    	js     2215 <submitr+0x258>
    20b5:	48 89 df             	mov    %rbx,%rdi
    20b8:	e8 83 f1 ff ff       	call   1240 <strlen@plt>
    20bd:	48 89 c5             	mov    %rax,%rbp
    20c0:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    20c5:	e8 76 f1 ff ff       	call   1240 <strlen@plt>
    20ca:	49 89 c6             	mov    %rax,%r14
    20cd:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    20d2:	e8 69 f1 ff ff       	call   1240 <strlen@plt>
    20d7:	49 89 c5             	mov    %rax,%r13
    20da:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    20df:	e8 5c f1 ff ff       	call   1240 <strlen@plt>
    20e4:	48 89 c2             	mov    %rax,%rdx
    20e7:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    20ee:	00 
    20ef:	48 01 d0             	add    %rdx,%rax
    20f2:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    20f7:	48 01 d0             	add    %rdx,%rax
    20fa:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2100:	0f 87 6c 01 00 00    	ja     2272 <submitr+0x2b5>
    2106:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    210d:	00 
    210e:	b9 00 04 00 00       	mov    $0x400,%ecx
    2113:	b8 00 00 00 00       	mov    $0x0,%eax
    2118:	48 89 d7             	mov    %rdx,%rdi
    211b:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    211e:	48 89 df             	mov    %rbx,%rdi
    2121:	e8 1a f1 ff ff       	call   1240 <strlen@plt>
    2126:	85 c0                	test   %eax,%eax
    2128:	0f 84 07 05 00 00    	je     2635 <submitr+0x678>
    212e:	8d 40 ff             	lea    -0x1(%rax),%eax
    2131:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    2136:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    213d:	00 
    213e:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    2145:	00 
    2146:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    214b:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    2152:	00 20 00 
    2155:	e9 a6 01 00 00       	jmp    2300 <submitr+0x343>
    215a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2161:	3a 20 43 
    2164:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    216b:	20 75 6e 
    216e:	49 89 07             	mov    %rax,(%r15)
    2171:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2175:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    217c:	74 6f 20 
    217f:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2186:	65 20 73 
    2189:	49 89 47 10          	mov    %rax,0x10(%r15)
    218d:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2191:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2198:	65 
    2199:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    21a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21a5:	e9 03 03 00 00       	jmp    24ad <submitr+0x4f0>
    21aa:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    21b1:	3a 20 44 
    21b4:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    21bb:	20 75 6e 
    21be:	49 89 07             	mov    %rax,(%r15)
    21c1:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21c5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    21cc:	74 6f 20 
    21cf:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    21d6:	76 65 20 
    21d9:	49 89 47 10          	mov    %rax,0x10(%r15)
    21dd:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21e1:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    21e8:	72 20 61 
    21eb:	49 89 47 20          	mov    %rax,0x20(%r15)
    21ef:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    21f6:	65 
    21f7:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    21fe:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2203:	44 89 e7             	mov    %r12d,%edi
    2206:	e8 65 f0 ff ff       	call   1270 <close@plt>
    220b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2210:	e9 98 02 00 00       	jmp    24ad <submitr+0x4f0>
    2215:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    221c:	3a 20 55 
    221f:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2226:	20 74 6f 
    2229:	49 89 07             	mov    %rax,(%r15)
    222c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2230:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2237:	65 63 74 
    223a:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2241:	68 65 20 
    2244:	49 89 47 10          	mov    %rax,0x10(%r15)
    2248:	49 89 57 18          	mov    %rdx,0x18(%r15)
    224c:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    2253:	76 
    2254:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    225b:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    2260:	44 89 e7             	mov    %r12d,%edi
    2263:	e8 08 f0 ff ff       	call   1270 <close@plt>
    2268:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    226d:	e9 3b 02 00 00       	jmp    24ad <submitr+0x4f0>
    2272:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2279:	3a 20 52 
    227c:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2283:	20 73 74 
    2286:	49 89 07             	mov    %rax,(%r15)
    2289:	49 89 57 08          	mov    %rdx,0x8(%r15)
    228d:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2294:	74 6f 6f 
    2297:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    229e:	65 2e 20 
    22a1:	49 89 47 10          	mov    %rax,0x10(%r15)
    22a5:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22a9:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    22b0:	61 73 65 
    22b3:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    22ba:	49 54 52 
    22bd:	49 89 47 20          	mov    %rax,0x20(%r15)
    22c1:	49 89 57 28          	mov    %rdx,0x28(%r15)
    22c5:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    22cc:	55 46 00 
    22cf:	49 89 47 30          	mov    %rax,0x30(%r15)
    22d3:	44 89 e7             	mov    %r12d,%edi
    22d6:	e8 95 ef ff ff       	call   1270 <close@plt>
    22db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22e0:	e9 c8 01 00 00       	jmp    24ad <submitr+0x4f0>
    22e5:	49 0f a3 c6          	bt     %rax,%r14
    22e9:	73 21                	jae    230c <submitr+0x34f>
    22eb:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    22ef:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    22f3:	48 83 c3 01          	add    $0x1,%rbx
    22f7:	4c 39 eb             	cmp    %r13,%rbx
    22fa:	0f 84 35 03 00 00    	je     2635 <submitr+0x678>
    2300:	44 0f b6 03          	movzbl (%rbx),%r8d
    2304:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    2308:	3c 35                	cmp    $0x35,%al
    230a:	76 d9                	jbe    22e5 <submitr+0x328>
    230c:	44 89 c0             	mov    %r8d,%eax
    230f:	83 e0 df             	and    $0xffffffdf,%eax
    2312:	83 e8 41             	sub    $0x41,%eax
    2315:	3c 19                	cmp    $0x19,%al
    2317:	76 d2                	jbe    22eb <submitr+0x32e>
    2319:	41 80 f8 20          	cmp    $0x20,%r8b
    231d:	74 60                	je     237f <submitr+0x3c2>
    231f:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2323:	3c 5f                	cmp    $0x5f,%al
    2325:	76 0a                	jbe    2331 <submitr+0x374>
    2327:	41 80 f8 09          	cmp    $0x9,%r8b
    232b:	0f 85 77 02 00 00    	jne    25a8 <submitr+0x5eb>
    2331:	45 0f b6 c0          	movzbl %r8b,%r8d
    2335:	48 8d 0d da 11 00 00 	lea    0x11da(%rip),%rcx        # 3516 <array.0+0x3d6>
    233c:	ba 08 00 00 00       	mov    $0x8,%edx
    2341:	be 01 00 00 00       	mov    $0x1,%esi
    2346:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    234b:	b8 00 00 00 00       	mov    $0x0,%eax
    2350:	e8 2b f0 ff ff       	call   1380 <__sprintf_chk@plt>
    2355:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    235c:	00 
    235d:	88 45 00             	mov    %al,0x0(%rbp)
    2360:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    2367:	00 
    2368:	88 45 01             	mov    %al,0x1(%rbp)
    236b:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    2372:	00 
    2373:	88 45 02             	mov    %al,0x2(%rbp)
    2376:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    237a:	e9 74 ff ff ff       	jmp    22f3 <submitr+0x336>
    237f:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2383:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2387:	e9 67 ff ff ff       	jmp    22f3 <submitr+0x336>
    238c:	48 01 c5             	add    %rax,%rbp
    238f:	48 29 c3             	sub    %rax,%rbx
    2392:	0f 84 08 03 00 00    	je     26a0 <submitr+0x6e3>
    2398:	48 89 da             	mov    %rbx,%rdx
    239b:	48 89 ee             	mov    %rbp,%rsi
    239e:	44 89 e7             	mov    %r12d,%edi
    23a1:	e8 8a ee ff ff       	call   1230 <write@plt>
    23a6:	48 85 c0             	test   %rax,%rax
    23a9:	7f e1                	jg     238c <submitr+0x3cf>
    23ab:	e8 50 ee ff ff       	call   1200 <__errno_location@plt>
    23b0:	83 38 04             	cmpl   $0x4,(%rax)
    23b3:	0f 85 90 01 00 00    	jne    2549 <submitr+0x58c>
    23b9:	4c 89 e8             	mov    %r13,%rax
    23bc:	eb ce                	jmp    238c <submitr+0x3cf>
    23be:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    23c5:	3a 20 43 
    23c8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    23cf:	20 75 6e 
    23d2:	49 89 07             	mov    %rax,(%r15)
    23d5:	49 89 57 08          	mov    %rdx,0x8(%r15)
    23d9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    23e0:	74 6f 20 
    23e3:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    23ea:	66 69 72 
    23ed:	49 89 47 10          	mov    %rax,0x10(%r15)
    23f1:	49 89 57 18          	mov    %rdx,0x18(%r15)
    23f5:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    23fc:	61 64 65 
    23ff:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2406:	6d 20 73 
    2409:	49 89 47 20          	mov    %rax,0x20(%r15)
    240d:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2411:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2418:	65 
    2419:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2420:	44 89 e7             	mov    %r12d,%edi
    2423:	e8 48 ee ff ff       	call   1270 <close@plt>
    2428:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    242d:	eb 7e                	jmp    24ad <submitr+0x4f0>
    242f:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    2436:	00 
    2437:	48 8d 0d 2a 10 00 00 	lea    0x102a(%rip),%rcx        # 3468 <array.0+0x328>
    243e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2445:	be 01 00 00 00       	mov    $0x1,%esi
    244a:	4c 89 ff             	mov    %r15,%rdi
    244d:	b8 00 00 00 00       	mov    $0x0,%eax
    2452:	e8 29 ef ff ff       	call   1380 <__sprintf_chk@plt>
    2457:	44 89 e7             	mov    %r12d,%edi
    245a:	e8 11 ee ff ff       	call   1270 <close@plt>
    245f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2464:	eb 47                	jmp    24ad <submitr+0x4f0>
    2466:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    246d:	00 
    246e:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2473:	ba 00 20 00 00       	mov    $0x2000,%edx
    2478:	e8 74 fa ff ff       	call   1ef1 <rio_readlineb>
    247d:	48 85 c0             	test   %rax,%rax
    2480:	7e 54                	jle    24d6 <submitr+0x519>
    2482:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2489:	00 
    248a:	4c 89 ff             	mov    %r15,%rdi
    248d:	e8 7e ed ff ff       	call   1210 <strcpy@plt>
    2492:	44 89 e7             	mov    %r12d,%edi
    2495:	e8 d6 ed ff ff       	call   1270 <close@plt>
    249a:	48 8d 35 90 10 00 00 	lea    0x1090(%rip),%rsi        # 3531 <array.0+0x3f1>
    24a1:	4c 89 ff             	mov    %r15,%rdi
    24a4:	e8 f7 ed ff ff       	call   12a0 <strcmp@plt>
    24a9:	f7 d8                	neg    %eax
    24ab:	19 c0                	sbb    %eax,%eax
    24ad:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    24b4:	00 
    24b5:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    24bc:	00 00 
    24be:	0f 85 f8 02 00 00    	jne    27bc <submitr+0x7ff>
    24c4:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    24cb:	5b                   	pop    %rbx
    24cc:	5d                   	pop    %rbp
    24cd:	41 5c                	pop    %r12
    24cf:	41 5d                	pop    %r13
    24d1:	41 5e                	pop    %r14
    24d3:	41 5f                	pop    %r15
    24d5:	c3                   	ret    
    24d6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24dd:	3a 20 43 
    24e0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24e7:	20 75 6e 
    24ea:	49 89 07             	mov    %rax,(%r15)
    24ed:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24f1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24f8:	74 6f 20 
    24fb:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2502:	73 74 61 
    2505:	49 89 47 10          	mov    %rax,0x10(%r15)
    2509:	49 89 57 18          	mov    %rdx,0x18(%r15)
    250d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2514:	65 73 73 
    2517:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    251e:	72 6f 6d 
    2521:	49 89 47 20          	mov    %rax,0x20(%r15)
    2525:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2529:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2530:	65 72 00 
    2533:	49 89 47 30          	mov    %rax,0x30(%r15)
    2537:	44 89 e7             	mov    %r12d,%edi
    253a:	e8 31 ed ff ff       	call   1270 <close@plt>
    253f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2544:	e9 64 ff ff ff       	jmp    24ad <submitr+0x4f0>
    2549:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2550:	3a 20 43 
    2553:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    255a:	20 75 6e 
    255d:	49 89 07             	mov    %rax,(%r15)
    2560:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2564:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    256b:	74 6f 20 
    256e:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2575:	20 74 6f 
    2578:	49 89 47 10          	mov    %rax,0x10(%r15)
    257c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2580:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2587:	73 65 72 
    258a:	49 89 47 20          	mov    %rax,0x20(%r15)
    258e:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2595:	00 
    2596:	44 89 e7             	mov    %r12d,%edi
    2599:	e8 d2 ec ff ff       	call   1270 <close@plt>
    259e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25a3:	e9 05 ff ff ff       	jmp    24ad <submitr+0x4f0>
    25a8:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    25af:	3a 20 52 
    25b2:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    25b9:	20 73 74 
    25bc:	49 89 07             	mov    %rax,(%r15)
    25bf:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25c3:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    25ca:	63 6f 6e 
    25cd:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    25d4:	20 61 6e 
    25d7:	49 89 47 10          	mov    %rax,0x10(%r15)
    25db:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25df:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    25e6:	67 61 6c 
    25e9:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    25f0:	6e 70 72 
    25f3:	49 89 47 20          	mov    %rax,0x20(%r15)
    25f7:	49 89 57 28          	mov    %rdx,0x28(%r15)
    25fb:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2602:	6c 65 20 
    2605:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    260c:	63 74 65 
    260f:	49 89 47 30          	mov    %rax,0x30(%r15)
    2613:	49 89 57 38          	mov    %rdx,0x38(%r15)
    2617:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    261e:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2623:	44 89 e7             	mov    %r12d,%edi
    2626:	e8 45 ec ff ff       	call   1270 <close@plt>
    262b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2630:	e9 78 fe ff ff       	jmp    24ad <submitr+0x4f0>
    2635:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    263c:	00 
    263d:	48 83 ec 08          	sub    $0x8,%rsp
    2641:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    2648:	00 
    2649:	50                   	push   %rax
    264a:	ff 74 24 28          	push   0x28(%rsp)
    264e:	ff 74 24 38          	push   0x38(%rsp)
    2652:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    2657:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    265c:	48 8d 0d 35 0e 00 00 	lea    0xe35(%rip),%rcx        # 3498 <array.0+0x358>
    2663:	ba 00 20 00 00       	mov    $0x2000,%edx
    2668:	be 01 00 00 00       	mov    $0x1,%esi
    266d:	48 89 df             	mov    %rbx,%rdi
    2670:	b8 00 00 00 00       	mov    $0x0,%eax
    2675:	e8 06 ed ff ff       	call   1380 <__sprintf_chk@plt>
    267a:	48 83 c4 20          	add    $0x20,%rsp
    267e:	48 89 df             	mov    %rbx,%rdi
    2681:	e8 ba eb ff ff       	call   1240 <strlen@plt>
    2686:	48 89 c3             	mov    %rax,%rbx
    2689:	48 8d ac 24 60 20 00 	lea    0x2060(%rsp),%rbp
    2690:	00 
    2691:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    2697:	48 85 c0             	test   %rax,%rax
    269a:	0f 85 f8 fc ff ff    	jne    2398 <submitr+0x3db>
    26a0:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    26a5:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    26ac:	00 
    26ad:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    26b2:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    26b7:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    26bc:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    26c3:	00 
    26c4:	ba 00 20 00 00       	mov    $0x2000,%edx
    26c9:	e8 23 f8 ff ff       	call   1ef1 <rio_readlineb>
    26ce:	48 85 c0             	test   %rax,%rax
    26d1:	0f 8e e7 fc ff ff    	jle    23be <submitr+0x401>
    26d7:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    26dc:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    26e3:	00 
    26e4:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    26eb:	00 
    26ec:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    26f3:	00 
    26f4:	48 8d 35 22 0e 00 00 	lea    0xe22(%rip),%rsi        # 351d <array.0+0x3dd>
    26fb:	b8 00 00 00 00       	mov    $0x0,%eax
    2700:	e8 fb eb ff ff       	call   1300 <__isoc99_sscanf@plt>
    2705:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    270a:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2711:	0f 85 18 fd ff ff    	jne    242f <submitr+0x472>
    2717:	48 8d 1d 10 0e 00 00 	lea    0xe10(%rip),%rbx        # 352e <array.0+0x3ee>
    271e:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2725:	00 
    2726:	48 89 de             	mov    %rbx,%rsi
    2729:	e8 72 eb ff ff       	call   12a0 <strcmp@plt>
    272e:	85 c0                	test   %eax,%eax
    2730:	0f 84 30 fd ff ff    	je     2466 <submitr+0x4a9>
    2736:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    273d:	00 
    273e:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2743:	ba 00 20 00 00       	mov    $0x2000,%edx
    2748:	e8 a4 f7 ff ff       	call   1ef1 <rio_readlineb>
    274d:	48 85 c0             	test   %rax,%rax
    2750:	7f cc                	jg     271e <submitr+0x761>
    2752:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2759:	3a 20 43 
    275c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2763:	20 75 6e 
    2766:	49 89 07             	mov    %rax,(%r15)
    2769:	49 89 57 08          	mov    %rdx,0x8(%r15)
    276d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2774:	74 6f 20 
    2777:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    277e:	68 65 61 
    2781:	49 89 47 10          	mov    %rax,0x10(%r15)
    2785:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2789:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2790:	66 72 6f 
    2793:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    279a:	76 65 72 
    279d:	49 89 47 20          	mov    %rax,0x20(%r15)
    27a1:	49 89 57 28          	mov    %rdx,0x28(%r15)
    27a5:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    27aa:	44 89 e7             	mov    %r12d,%edi
    27ad:	e8 be ea ff ff       	call   1270 <close@plt>
    27b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27b7:	e9 f1 fc ff ff       	jmp    24ad <submitr+0x4f0>
    27bc:	e8 8f ea ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000027c1 <init_timeout>:
    27c1:	f3 0f 1e fa          	endbr64 
    27c5:	85 ff                	test   %edi,%edi
    27c7:	75 01                	jne    27ca <init_timeout+0x9>
    27c9:	c3                   	ret    
    27ca:	53                   	push   %rbx
    27cb:	89 fb                	mov    %edi,%ebx
    27cd:	48 8d 35 e7 f6 ff ff 	lea    -0x919(%rip),%rsi        # 1ebb <sigalrm_handler>
    27d4:	bf 0e 00 00 00       	mov    $0xe,%edi
    27d9:	e8 d2 ea ff ff       	call   12b0 <signal@plt>
    27de:	85 db                	test   %ebx,%ebx
    27e0:	b8 00 00 00 00       	mov    $0x0,%eax
    27e5:	0f 49 c3             	cmovns %ebx,%eax
    27e8:	89 c7                	mov    %eax,%edi
    27ea:	e8 71 ea ff ff       	call   1260 <alarm@plt>
    27ef:	5b                   	pop    %rbx
    27f0:	c3                   	ret    

00000000000027f1 <init_driver>:
    27f1:	f3 0f 1e fa          	endbr64 
    27f5:	41 54                	push   %r12
    27f7:	55                   	push   %rbp
    27f8:	53                   	push   %rbx
    27f9:	48 83 ec 20          	sub    $0x20,%rsp
    27fd:	48 89 fd             	mov    %rdi,%rbp
    2800:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2807:	00 00 
    2809:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    280e:	31 c0                	xor    %eax,%eax
    2810:	be 01 00 00 00       	mov    $0x1,%esi
    2815:	bf 0d 00 00 00       	mov    $0xd,%edi
    281a:	e8 91 ea ff ff       	call   12b0 <signal@plt>
    281f:	be 01 00 00 00       	mov    $0x1,%esi
    2824:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2829:	e8 82 ea ff ff       	call   12b0 <signal@plt>
    282e:	be 01 00 00 00       	mov    $0x1,%esi
    2833:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2838:	e8 73 ea ff ff       	call   12b0 <signal@plt>
    283d:	ba 00 00 00 00       	mov    $0x0,%edx
    2842:	be 01 00 00 00       	mov    $0x1,%esi
    2847:	bf 02 00 00 00       	mov    $0x2,%edi
    284c:	e8 3f eb ff ff       	call   1390 <socket@plt>
    2851:	85 c0                	test   %eax,%eax
    2853:	0f 88 9c 00 00 00    	js     28f5 <init_driver+0x104>
    2859:	89 c3                	mov    %eax,%ebx
    285b:	48 8d 3d d2 0c 00 00 	lea    0xcd2(%rip),%rdi        # 3534 <array.0+0x3f4>
    2862:	e8 59 ea ff ff       	call   12c0 <gethostbyname@plt>
    2867:	48 85 c0             	test   %rax,%rax
    286a:	0f 84 d1 00 00 00    	je     2941 <init_driver+0x150>
    2870:	49 89 e4             	mov    %rsp,%r12
    2873:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    287a:	00 
    287b:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2882:	00 00 
    2884:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    288a:	48 63 50 14          	movslq 0x14(%rax),%rdx
    288e:	48 8b 40 18          	mov    0x18(%rax),%rax
    2892:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2897:	b9 0c 00 00 00       	mov    $0xc,%ecx
    289c:	48 8b 30             	mov    (%rax),%rsi
    289f:	e8 2c ea ff ff       	call   12d0 <__memmove_chk@plt>
    28a4:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    28ab:	ba 10 00 00 00       	mov    $0x10,%edx
    28b0:	4c 89 e6             	mov    %r12,%rsi
    28b3:	89 df                	mov    %ebx,%edi
    28b5:	e8 86 ea ff ff       	call   1340 <connect@plt>
    28ba:	85 c0                	test   %eax,%eax
    28bc:	0f 88 e7 00 00 00    	js     29a9 <init_driver+0x1b8>
    28c2:	89 df                	mov    %ebx,%edi
    28c4:	e8 a7 e9 ff ff       	call   1270 <close@plt>
    28c9:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    28cf:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    28d3:	b8 00 00 00 00       	mov    $0x0,%eax
    28d8:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    28dd:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    28e4:	00 00 
    28e6:	0f 85 f5 00 00 00    	jne    29e1 <init_driver+0x1f0>
    28ec:	48 83 c4 20          	add    $0x20,%rsp
    28f0:	5b                   	pop    %rbx
    28f1:	5d                   	pop    %rbp
    28f2:	41 5c                	pop    %r12
    28f4:	c3                   	ret    
    28f5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    28fc:	3a 20 43 
    28ff:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2906:	20 75 6e 
    2909:	48 89 45 00          	mov    %rax,0x0(%rbp)
    290d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2911:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2918:	74 6f 20 
    291b:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2922:	65 20 73 
    2925:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2929:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    292d:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2934:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    293a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    293f:	eb 97                	jmp    28d8 <init_driver+0xe7>
    2941:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2948:	3a 20 44 
    294b:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2952:	20 75 6e 
    2955:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2959:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    295d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2964:	74 6f 20 
    2967:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    296e:	76 65 20 
    2971:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2975:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2979:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2980:	72 20 61 
    2983:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2987:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    298e:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2994:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2998:	89 df                	mov    %ebx,%edi
    299a:	e8 d1 e8 ff ff       	call   1270 <close@plt>
    299f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29a4:	e9 2f ff ff ff       	jmp    28d8 <init_driver+0xe7>
    29a9:	4c 8d 05 84 0b 00 00 	lea    0xb84(%rip),%r8        # 3534 <array.0+0x3f4>
    29b0:	48 8d 0d 39 0b 00 00 	lea    0xb39(%rip),%rcx        # 34f0 <array.0+0x3b0>
    29b7:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    29be:	be 01 00 00 00       	mov    $0x1,%esi
    29c3:	48 89 ef             	mov    %rbp,%rdi
    29c6:	b8 00 00 00 00       	mov    $0x0,%eax
    29cb:	e8 b0 e9 ff ff       	call   1380 <__sprintf_chk@plt>
    29d0:	89 df                	mov    %ebx,%edi
    29d2:	e8 99 e8 ff ff       	call   1270 <close@plt>
    29d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29dc:	e9 f7 fe ff ff       	jmp    28d8 <init_driver+0xe7>
    29e1:	e8 6a e8 ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000029e6 <driver_post>:
    29e6:	f3 0f 1e fa          	endbr64 
    29ea:	53                   	push   %rbx
    29eb:	4c 89 c3             	mov    %r8,%rbx
    29ee:	85 c9                	test   %ecx,%ecx
    29f0:	75 17                	jne    2a09 <driver_post+0x23>
    29f2:	48 85 ff             	test   %rdi,%rdi
    29f5:	74 05                	je     29fc <driver_post+0x16>
    29f7:	80 3f 00             	cmpb   $0x0,(%rdi)
    29fa:	75 33                	jne    2a2f <driver_post+0x49>
    29fc:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a01:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a05:	89 c8                	mov    %ecx,%eax
    2a07:	5b                   	pop    %rbx
    2a08:	c3                   	ret    
    2a09:	48 8d 35 3c 0b 00 00 	lea    0xb3c(%rip),%rsi        # 354c <array.0+0x40c>
    2a10:	bf 01 00 00 00       	mov    $0x1,%edi
    2a15:	b8 00 00 00 00       	mov    $0x0,%eax
    2a1a:	e8 f1 e8 ff ff       	call   1310 <__printf_chk@plt>
    2a1f:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a24:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a28:	b8 00 00 00 00       	mov    $0x0,%eax
    2a2d:	eb d8                	jmp    2a07 <driver_post+0x21>
    2a2f:	41 50                	push   %r8
    2a31:	52                   	push   %rdx
    2a32:	4c 8d 0d 2a 0b 00 00 	lea    0xb2a(%rip),%r9        # 3563 <array.0+0x423>
    2a39:	49 89 f0             	mov    %rsi,%r8
    2a3c:	48 89 f9             	mov    %rdi,%rcx
    2a3f:	48 8d 15 25 0b 00 00 	lea    0xb25(%rip),%rdx        # 356b <array.0+0x42b>
    2a46:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2a4b:	48 8d 3d e2 0a 00 00 	lea    0xae2(%rip),%rdi        # 3534 <array.0+0x3f4>
    2a52:	e8 66 f5 ff ff       	call   1fbd <submitr>
    2a57:	48 83 c4 10          	add    $0x10,%rsp
    2a5b:	eb aa                	jmp    2a07 <driver_post+0x21>

Disassembly of section .fini:

0000000000002a60 <_fini>:
    2a60:	f3 0f 1e fa          	endbr64 
    2a64:	48 83 ec 08          	sub    $0x8,%rsp
    2a68:	48 83 c4 08          	add    $0x8,%rsp
    2a6c:	c3                   	ret    
