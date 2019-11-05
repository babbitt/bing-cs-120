.data
x: .word 42
message: .asciiz "Hello world!\n"

.text
main: 
    addi $sp, $sp, -4
    sw $ra, 0($sp)

    lw $a0, x
    li $v0, 1
    syscall

    la $a0, message
    li $v0, 4
    syscall
    
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    
    jr $ra