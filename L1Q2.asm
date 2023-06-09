.text
	addi $s0, $zero, 1
	addi $s1, $zero, 23
	slt $t0, $s1, $s0
	addi $t1, $zero, 1
	beq $t0, $t1, if
	j else
	if:
		add $s2, $s0, $zero
		j exit
	else:
		add $s2, $s1, $zero
		j exit
	exit: 
	
	li $v0, 1
	add $a0, $zero, $s2
	syscall
	