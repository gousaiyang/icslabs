# Lab 8: Understanding Cache Memories

## Requirements

### Introduction

This lab will help you understand the impact that cache memories can have on the performance of your C programs.  
The lab consists of two parts. In the first part you will write a small C program (about 200-300 lines) that simulates the behavior of a cache memory. In the second part, you will optimize a small matrix transpose function, with the goal of minimizing the number of cache misses.

### Full requirements

See [`lab8.pdf`](https://github.com/gousaiyang/icslabs/blob/master/lab8/lab8.pdf).

### Files to commit

- `csim.c`
- `trans.c`

## My score and feelings

### My score

60 / 60 (Full score)

### My general feelings

又是一个性能优化 lab，逢优化必有 hack，这次还已经指明了要对每个测试点单独 hack。64 * 64 比较难，其他两个相对简单些。

## Hints

Part A 就是直接模拟，没有什么要多说的。Part B 的策略详见 `trans.c` 文件里的注释。

总体思想就是：利用分块和调整访问次序来尽量避免有用的缓存被驱逐，从而减少不命中次数。

64 * 64 中用到了一种 hack 的方法：先把 A 的一些数据复制到 B 暂时不用的空间（set index 不同的区域），之后再复制到目标区域，避免 naive 地直接复制时会发生的 set index 冲突（这会导致大量有用的缓存被驱逐，出现大量不命中）。

一个很有用的技巧：在写 Part B 时，可以在 Part A 模拟器的 -v 选项开启时增加输出 `A[m][n]` 和 `B[m][n]` 下标、地址以及对应的 set index 的代码，这样可以从输出中获知数组 A 和 B 的地址、矩阵中循环的轨迹以及每次操作的 set index 等信息，非常有助于分析和优化。
