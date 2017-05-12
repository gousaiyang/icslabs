# Lab 7: Writing a Dynamic Storage Allocator

## Requirements

### Introduction

In this lab you will be writing a dynamic storage allocator for C programs, i.e., your own version of the `malloc`, `free` and `realloc` routines. You are encouraged to explore the design space creatively and implement an allocator that is correct, efficient and fast.

### Full requirements

See [`lab7.pdf`](https://github.com/gousaiyang/icslabs/blob/master/lab7/lab7.pdf).

### Files to commit

- `mm.c`

## My score and feelings

### My score

65 / 65 (Full score)

### My general feelings

又是一个得分与性能有关的 lab，需要取得速度和空间利用率的折中，难度还是挺大的。

## Hints

以下是我使用的策略：
- 在大多数情况下使用 next-fit 以提升速度，少数特殊情况下使用 first-fit。
- `mm_realloc()` 函数针对当前块和周围块的各种情形进行优化，尽可能合理地利用当前块附近的空间。
- 对 extend heap 操作的大小进行优化，避免堆尾部的空闲区域造成空间利用率下降。
- 针对 `binary-bal.rep`、`binary2-bal.rep`、`realloc2-bal.rep` 3 个测试点进行了专门的 hack，对申请块时的放置方式进行了专门的重新调度，以提升这些测试点的空间利用率。

在这个 lab 中我只使用了最简单的隐式空闲链表结构，没有去实现简单分离存储、分离适配等等，但也仍然拿到了满分。这是因为我发现影响利用率的关键因素不是空闲块的选择策略，而是在有大片空闲区域时申请块时的放置策略，不能简单地一个接一个地顺序放置。binary 系列测试点完全就是故意在制造碎片，必须在其上使用专门的放置方式（比如把大块全部强行放到后面，小块全部强行放到前面；或者修改大块的请求，让它占更多空间，使得后面 realloc 的时候这个空闲块大小恰好足够）。这样做完全就是在 hack，代码中也出现了一堆常数和专门的测试点判断语句，其实感觉不太优雅。
