.data
	print1: .asciiz "FL\n"
	print2: .asciiz "PS\n"
	print3: .asciiz "CR\n"
	print4: .asciiz "DN\n"
	print5: .asciiz "HD\n"
.text
	addi $t0, $zero, 50
	addi $t1, $zero, 65
	addi $t2, $zero, 75
	addi $t3, $zero, 85

	li $v0, 5
	syscall
	add $s0, $zero, $v0
	
	slt $t4, $s0, $t0
	beq $t4, $zero, exit1
	li $v0, 4
	la $a0, print1
	syscall
	j exit
	exit1:
	
	slt $t4, $s0, $t1
	beq $t4, $zero, exit2
	li $v0, 4
	la $a0, print2
	syscall
	j exit
	exit2:
	
	slt $t4, $s0, $t2
	beq $t4, $zero, exit3
	li $v0, 4
	la $a0, print3
	syscall
	j exit
	exit3:
	
	slt  $t4, $s0, $t3
	beq $t4, $zero, exit4
	li $v0, 4
	la $a0, print4
	syscall
	j exit
	exit4:
	
	li $v0, 4
	la $a0, print5
	syscall
	
	exit: