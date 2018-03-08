# Lab 2: Defusing a Binary Bomb

## Requirements

### Introduction

The nefarious Dr. Evil has planted a slew of "binary bombs" on our machines. A binary bomb is a program that consists of a sequence of phases. Each phase expects you to type a particular string on stdin. If you type the correct string, then the phase is defused and the bomb proceeds to the next phase. Otherwise, the bomb explodes by printing "BOOM!!!" and then terminating. The bomb is defused when every phase has been defused.

### Full requirements

See [`lab2.pdf`](https://github.com/gousaiyang/icslabs/blob/master/lab2/lab2.pdf).

### Files to commit

- None. (Your operations toward the bomb will be recorded and graded by the server.)

## My score and feelings

### My score

65 / 65 (Full score)

### My general feelings

我认为这是 10 个 lab 中最有趣，最令人激动的一个！无论是思维上还是操作上都富有挑战性，简直就像一个解谜游戏一样！

## Hints

### 基本技能

#### 静态分析（通过仔细阅读汇编代码理解程序的执行逻辑）

- 使用 objdump 进行反汇编
- 使用 strings 打印出程序中所有字符串（非必需，不过这么干可以直接搞出一些答案来）
- （大三后续补充）可使用更加强大的静态分析工具 IDA Pro，它能将程序直接反编译成 C 代码，明显提升阅读效率！

#### 动态调试（通过调试工具控制指令的执行，并在中间状态打印出有用的信息）

- 熟练使用 GDB 的命令（很多命令都可以简写），最重要的是以下这些：
  - 执行流程
    - 在指定地址处设置断点：`b *0x8048399`
    - 在指定函数入口设置断点：`b func_name`
    - 运行：`r`
    - 继续：`c`
    - 逐过程：`nexti`
    - 逐语句（指令）：`stepi`
    - 退出：`q`
  - 打印寄存器或指定内存地址中的值
    - 按 10 进制打印：`print/d $eax`
    - 按 16 进制打印：`print/x $eax`
    - 按字符打印：`print/c *0x8048399`
    - 打印从某地址开始的字符串：`print/s (char*)0x8048399`
- （大三后续补充）可以给 GDB 安装 [gdb-peda](https://github.com/longld/peda) 插件，调试体验更上一层楼！

### 操作技巧

1. 静态分析的时候最重要的是读懂结构（跳转语句），建议在草稿纸上画一画图。所要关注的重点：
  - 哪些条件下会触发 `explode_bomb`，怎么避开
  - 需要哪些值满足条件才行
2. 关于下断点：
  - 每次运行 `bomb` 时首先给 `explode_bomb` 函数下断点，避免这个函数执行！这样可以完全避免炸弹爆炸，保证不失分！
  - 建议拆当前 phase 时给下一个 phase 函数下断点，避免通过这个 phase 之后直接进入下个 phase 的提示输入状态，带来麻烦。
  - 可在关键的跳转语句处下断点，省去大量的 `stepi` 操作。
3. 静态分析更重要还是动态调试更重要？
  - 简单的 phase 可能用不着仔细看汇编代码，直接动态调试就可以了。但逻辑复杂的时候务必仔细阅读汇编代码，否则弄不清楚逻辑。
  - 不能只看汇编代码，勤于动手（动态调试）很重要。比如：
    - 获取函数参数的指令，其实不必去手动计算哪个地址对应的是哪个参数，直接用 GDB 打印出来看更快。
    - 从某个内存地址去读数据的，直接打印就好。特别是在某些关键的比较值的地方，直接把内存里面的值挖出来。
  - 静态分析和动态调试要做到有机结合，效果最好。
4. 机考的时候时间很紧迫，务必注意以上关于提高效率的技巧，争分夺秒拆弹！

Be an excellent hacker and enjoy defusing the bomb!
