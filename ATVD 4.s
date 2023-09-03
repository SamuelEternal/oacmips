.data
stack:  .space 1024
sp:     .word  0

.text
.globl main

push:
    lw  $t0, sp
    lw  $t1, 0($sp)
    addi $t0, $t0, -4
    sw  $t1, 0($t0)
    sw  $t0, sp
    jr  $ra

pop:
    lw  $t0, sp
    lw  $t1, 0($t0)
    addi $t0, $t0, 4
    sw  $t1, 0($t0)
    sw  $t0, sp
    move $v0, $t1
    jr  $ra

main:
    la  $t0, stack
    sw  $t0, sp

    li  $t1, 42
    jal push
    li  $t1, 17
    jal push

    jal pop
    move $t2, $v0
    jal pop
    move $t3, $v0

    li   $v0, 10
    syscall