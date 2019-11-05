.data
nl: .asciiz "\n"

.text
main:
    li $s1, 0
    li $s2, 20 # Limit
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    loop: 
    beq $s1, $s2, done
    addi $s1, $s1, 1
    addi $a0, $s1, 0
    li $v0, 1
    syscall
    la $a0, nl
    li $v0, 4
    syscall
    j loop
    
    done:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    
    jr $ra