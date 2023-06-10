.data
	print: .asciiz "n ="
	
.text
	li $v0, 5
	syscall
	add $s0, $v0, $zero
	addi $s0, $s0, 1
	
	addi $s1, $zero, 1
	addi $t0, $zero, 1
	loop:
		slt $t1, $t0, $s0
		beq $t1, $zero, exit
		mul $s1, $s1, $t0
		addi $t0, $t0, 1
		j loop
	exit:
	
	li $v0, 4
	la $a0, print
	syscall
	
	li $v0, 1
	add $a0, $zero, $s1
	syscall
	
	li $v0, 10
	syscall
		