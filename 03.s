.data 
.align 2
array: .word 0, 1, 2, 3, 4, 5

.text
.globl main

main: 
    la $t1, array
    add $t1, $t1, 20
    lw $t0, 0($t1)

    li $v0, 10
    syscal