.text
	addi $s0, $zero, 1
	addi $t0, $zero, 8
	loop:	beq $s0, $t0, exit
		addi $s0, $s0, 1
		add $s1, $s0, $zero
		j loop
	exit:
	li $v0, 1
	add $a0, $zero, $s1
	syscall