# Lab 5: Y86 Assembler

## Requirements

### Introduction

The purpose of this lab is to have a deep insight into Y86 instruction architecture. You will do this by implementing an assembler which transforms Y86 assembly codes into Y86 binary codes.

### Full requirements

See [`lab5.pdf`](https://github.com/gousaiyang/icslabs/blob/master/lab5/lab5.pdf).

### Files to commit

- `y86asm.c`
- `y86asm.h` (If you modify it)

## My score and feelings

### My score

80 / 80 (Full score)

### My general feelings

这个 lab 比 lab4 要难一些，主要是一些文本解析的工作，需要处理好一些细节问题，在测试过程中逐渐都可以找到。整体来说不算太难。

## Hints

- 先读懂 `y86asm.h` 里面的数据结构和 `y86asm.c` 中的工具函数，务必弄清楚它们的含义，并理解整个程序的结构。
- 有的指令里面的一些标签地址是不确定的，只能暂时空着，之后再回来填写。这个过程其实在第 7 章《链接》里面会讲到，叫做重定位(Relocation)。虽然此时还没学到，但实现的方法自己还是比较容易想到的。
- 一些细节问题
  - `.pos` 和 `.align` 这两条汇编器指令在该行的左边标记的 `vmaddr` 值就已经发生变化了，而不是到下一行才发生变化（可仔细看书上第 4 章的示例代码）。
  - `.long array` 这样的指令是合法的（即 `.long` 后面的可以是标签名(symbol)而不一定是一个数值），所以读到 `.long` 之后要用 `parse_data()` 函数读后面的数值或标签名，不能用 `parse_digit()`。
