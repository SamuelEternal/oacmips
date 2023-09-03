.data
array:  .word 10, 20, 30, 40, 50, 60, 70, 80, 90, 100

.text
.globl main

main:
    la   $t0, array
    li   $t1, 5
    sll  $t1, $t1, 2
    add  $t2, $t0, $t1
    lw   $t3, 0($t2)
    li   $v0, 10
    syscall