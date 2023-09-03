.text
.globl main

main:
    li   $t0, 5
    blez $t0, else_label
    j    skip_else

else_label:
skip_else:
    li   $v0, 10
    syscall