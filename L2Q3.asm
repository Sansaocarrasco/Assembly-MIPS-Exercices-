.data
	print1: .asciiz "*"
	print2: .asciiz "\n"
	
.text
	addi $s0, $zero, 1
	addi $s1, $zero, 1
	addi $s2, $zero, 11
	
	loop1:
		slt $t1, $s0, $s2
		beq $t1, $zero, exit2
		loop2:
			slt $t2, $s1, $s0
			beq $t2, $zero, exit1
			li $v0, 4
			la $a0, print1
			syscall
			addi $s1, $s1, 1
			j loop2
		exit1:	
		li $v0, 4
		la $a0, print2
		syscall
		addi $s0, $s0, 1
		j loop1
	exit2:
	
	li $v0, 10
	syscall