# Lab 4: Y86 Simulator

## Requirements

### Introduction

The purpose of this lab is to have a deep insight into Y86 instruction function. You will do this by implementing a simulator which simulates the behavior of a machine running Y86 binary codes.

### Full requirements

See [`lab4.pdf`](https://github.com/gousaiyang/icslabs/blob/master/lab4/lab4.pdf).

### Files to commit

- `y86sim.c`
- `y86sim.h` (If you modify it)

## My score and feelings

### My score

72 / 72 (Full score)

### My general feelings

个人认为这个 lab 是所有 lab 中最简单的，基本就是一种直接翻译，没什么多的感觉。

## Hints

先读懂 `y86sim.h` 里面的数据结构和 `y86sim.c` 中的工具函数，弄清楚它们的含义。  
按照书上 Y86 指令集的定义，原样模拟就可以了，挺简单的。  
第一遍写的时候不知道报错信息格式，跑一下测试程序就知道了，再去改。
