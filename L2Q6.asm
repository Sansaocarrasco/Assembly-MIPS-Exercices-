.data
	print: .asciiz "\n"
	
.text
	li $v0, 5
	syscall
	addi $s0, $v0, 1
	
	addi $t0, $zero, 1
	loop:
		slt $t1, $t0, $s0
		beq $t1, $zero, exit
		
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		
		li $v0, 4
		la $a0, print
		syscall
		
		addi $t0, $t0, 1
		j loop
	exit:
	
	li $v0, 10
	syscall
	