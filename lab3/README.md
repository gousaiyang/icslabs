# Lab 3: The Buffer Bomb

## Requirements

### Introduction

This assignment will help you develop a detailed understanding of IA-32 calling conventions and stack organization. It involves applying a series of buffer overflow attacks on an executable file bufbomb in the lab directory.

### Full requirements

See [`lab3.pdf`](https://github.com/gousaiyang/icslabs/blob/master/lab3/lab3.pdf).

### Files to commit

- None. (Your operations toward the `bufbomb` program will be recorded and graded by the server using `-s` option.)

## My score and feelings

### My score

65 / 65 (Full score)

### My general feelings

这个 lab 也比较有趣，具有很强的操作性，难度比 lab2 要低。

## Hints

这个 lab 和 lab2 一样，也是要使用静态分析和动态调试的方法，但熟练度要求要小一些。基本上按照文档里说的方式来操作就行了。  
有几个需要注意的点：
- 建议在草稿纸上画出栈帧结构图，有利于算清楚地址。
- 某些与 `buf` 有关的关键地址要用 GDB 在运行时查看。
- Level 2 之后的攻击代码可以写在给 `buf` 数组输入内容的开头，`buf` 的大小是足够我们写攻击代码的，不要把攻击代码写到所要覆盖的返回地址之后，这样容易破坏调用者的栈帧。
- 恢复栈帧的重点在于恢复旧的 %ebp 值，可以利用 %esp 的当前值来恢复（找出二者之间存在的关系）。
- 在开启栈随机化时，覆盖的返回地址取值可以取为 `buf` 地址的最大可能值和最小可能值的平均值（取中点），这样命中 nop sled 的概率很大。
