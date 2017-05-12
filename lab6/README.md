# Lab 6: Optimizing the Performance of a Pipeline Processor

## Requirements

### Introduction

In this lab, you will learn about the design and implementation of a pipelined Y86 processor, optimizing both it and a benchmark program to maximize performance. You are allowed to make any semantics preserving transformations to the benchmark program, or to make enhancements to the pipelined processor, or both. When you have completed the lab, you will have a keen appreciation for the interactions between code and hardware that affect the performance of your programs.

### Full requirements

See [`lab6.pdf`](https://github.com/gousaiyang/icslabs/blob/master/lab6/lab6.pdf).

### Files to commit

- Part A (in `misc` folder)
  - `sum.ys`
  - `rsum.ys`
  - `copy.ys`
- Part B (in `seq` folder)
  - `seq-full.hcl`
- Part C (in `pipe` folder)
  - `ncopy.ys`
  - `pipe-full.hcl`

## My score and feelings

### My score

150 / 160 (Not full score)

### My general feelings

这个 lab 可以说是 10 个 lab 中最难的一个了，也是我用时最长的一个，并且最终没有拿到满分。因为从这个 lab 起得分与性能有关了，而不仅仅是正确就能得满分。要拿到满分需要对电路 HCL 代码进行魔改，而往届大佬们的某种魔改方法我并没有成功地实现出来。

## Hints

Part A 和 Part B 没什么多的可说的，都是在给 Part C 作铺垫。主要难点在 Part C 的性能优化上。
  
以下是我使用的优化方式：
- 程序(`ncopy.ys`)
  - Use `iaddl` and `leave` instructions to reduce the number of instructions. 
  - Use 16-way loop unrolling.
  - Deal tail elements with jump table.
  - Use a customized function epilogue instead of the given one.
- 处理器(`pipe-full.hcl`)
  - Implement `iaddl` and `leave` instructions to reduce the number of instructions.
  - Implement load forwarding to eliminate stall between `mrmovl` and `rmmovl`/`pushl`.
  - Reduce stalls in `pushl`/`ret` condition(`pushl` followed by `ret`). Forward valA from memory, 3 stalls in `ret` can be reduced to only 1 stall.

经过这样的优化之后，CPE 降至 8.46，但没有达到满分的要求（7.80）。

有一种我没有实现出来的满分大佬的魔改方式：通过修改 ifun，让 `mrmovl`/`rmmovl` 偷偷地提前计算条件码，使得后面跳转语句的分支预测次次都正确。

注意:
- 在进行性能优化（尤其是魔改）的时候，不能破坏了程序和处理器__各自__的正确性，程序本身按照指令集的定义计算出的值应该是正确的，处理器也应该能正确地执行所有可能的程序。
- 这里面评测的 CPE 定义与书上不同，书上的是线性拟合的系数，而这里是直接相除的。这样算的条件更加苛刻了，尤其是 N 很小的时候的 CPE 值很拖后腿。所以要拿满分必须有很大的优化才行。
