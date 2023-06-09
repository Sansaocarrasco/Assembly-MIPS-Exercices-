.text
	addi $s0, $zero, 25
	addi $s1, $zero, 0
	addi $t0, $zero, 10
	addi $t1, $zero, 25
	beq $s0, $t0, case1
	beq $s0, $t1, case2
	j exit
	case1:
		add $s1, $zero, $t0
		j exit
	case2:
		add $s1, $zero, $t1
		j exit
	exit:
	
	li $v0, 1
	add $a0, $zero, $s1
	syscall