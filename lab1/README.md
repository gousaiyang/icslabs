# Lab 1: Manipulating Bits

## Requirements

### Introduction

The purpose of this assignment is to become more familiar with bit-level representations and manipulations. You'll do this by solving a series of programming "puzzles".

### Full requirements

See [`lab1.pdf`](https://github.com/gousaiyang/icslabs/blob/master/lab1/lab1.pdf).

### Files to commit

- `bits.c`

## My score and feelings

### My score

75 / 75 (Full score)

### My general feelings

这个 lab 感觉像是一个智力测试，有一定的思维难度，但编码很轻松。

## Hints

关于位运算的一些技巧：

1. 充分发挥运算符的作用
  - `|` 用于设置部分位， `&` 用于取出部分位， `^` 用于对部分位取反部分不变。
  - `^` 可用于判等，判断同号异号，还可用于数据交换。
  - `!!` 相当于转布尔（非零 -> 1，0 -> 0）。
  - 充分利用移位和取反生成适当的掩码来帮助运算。特别地：
    - `x >> 31` 可以把 x 的最高位（即符号位）拖满 32 位。
    - `x << 31 >> 31` 可以把 x 的最低位拖满 32 位。
2. 使用多路复用器结构实现条件表达式
  - 多路复用器(multiplexor)本来是数字电路中的概念，这里使用的表达式格式非常相似，具体参见 `conditional` 函数。
3. 利用一些运算性质
  - `-x = ~x + 1`
  - `leastBitPos` 的运算性质（参见代码）
  - `x + y = (x ^ y) + ((x & y) << 1)` （半加器补上进位，在 `sum3` 中用到）
  - 利用运算时发生的溢出（在 `isNonZero` 中用到，可简化为`(x | (~x + 1)) >> 31 & 1`）

注：题目解法不唯一，我的解法仅供参考，可能存在其他更好的解法。
