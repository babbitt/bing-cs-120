.data
x:  .word 10
    .word 20
    .word 30
y:  .word 8
    .word 22
    .word 48
    .word 13
    .word 9
message: .asciiz " is the total.\n"

.text
main:
    addi $sp, $sp, -4
    sw $ra, 0($sp)

    la $a0, y
    li $a1, 6
    li $a2, 15

    jal sum

    add $a0, $v0, $0
    li $v0, 1
    syscall
    la $a0, message
    li $v0, 4
    syscall
    
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

sum: 
    li $v0, 0

loop:
    lw $t0, 0($a0)
    sub $t1, $t0, $a2
    addi $a0, $a0, 4
    addi $a1, $a1, -1
    beq $a1, $s0, done
    blez $t1, loop
    add $v0, $v0, $t0
    j loop

done: 
    jr $ra