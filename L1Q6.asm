.text
	addi $s0, $zero, 1
	addi $s1, $zero, 1
	addi $t0, $zero, 4
	
	loop:
		beq $t0, $zero, exit
		add $s0, $s0, $s1
		add $s1, $s1, $s0
		subi $t0, $t0, 1
		j loop
	exit:
	
	li $v0, 1
	add $a0, $zero, $s0
	syscall
		