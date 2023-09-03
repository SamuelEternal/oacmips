.data
.text

main:
   
    li $t0, 5      # $t0 = 5
    li $t1, 7      # $t1 = 7

    mult $t0, $t1

    
    mflo $t2       # $t2 = parte baixa do resultado
    mfhi $t3       # $t3 = parte alta do resultado

   
    li $v0, 10     # Código de saída do programa
    syscall
