# lab4.s
.text
main: li $s0, 0 # Sum
 li $s1, 0 # Index
 li $s2, 21 # Limit of 10
loop: beq $s1, $s2, done
 mult $s1, $s1
 mflo $s3
 add $s0, $s0, $s3
 addi $s1, $s1, 1
 j loop
done: jr $ra