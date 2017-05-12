# Lab 9: Writing Your Own Unix Shell

## Requirements

### Introduction

The purpose of this assignment is to become more familiar with the concepts of process control and signalling. You'll do this by writing a simple Unix shell program that supports job control.

### Full requirements

See [`lab9.pdf`](https://github.com/gousaiyang/icslabs/blob/master/lab9/lab9.pdf).

### Files to commit

- `tsh.c`

## My score and feelings

### My score

90 / 90 (Full score)

### My general feelings

终于不是性能优化 lab 了。这个 lab 总体来说不难，已经给出了框架和很多工具函数的代码，不过需要处理很多细节问题，一定要仔细看书和文档，里面提到了很多需要注意的问题。

## Hints

一定要首先读懂整体框架、定义的数据结构和工具函数的意义。

除了书上和文档里面提到的问题以外，还要注意以下两个细节问题：
- 任务状态发生变化时不要忘记修改它的 `state` 属性。
- 创建后台任务或把一个任务转为后台任务时，需要打印一个描述字符串（包含 pid、jid 和 cmdline）。当任务被信号终止或停止时，也要打印描述字符串。这些描述字符串的具体格式跑了测试程序就可以看到。
