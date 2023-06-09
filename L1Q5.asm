.text
	addi $s0, $zero, 3216
	addi $t0, $zero, 1000
	addi $t1, $zero, 100
	addi $t2, $zero, 10

	div $s0, $t0
	mflo $s1
	mfhi $s0
	
	div $s0, $t1
	mflo $s2
	mfhi $s0
	
	div $s0, $t2
	mflo $s3
	mfhi $s0
	
	mul $s2, $s2, $t2
	mul $s3, $s3, $t1
	mul $s0, $s0, $t0
	
	add $s0, $s0, $s1
	add $s0, $s0, $s2
	add $s0, $s0, $s3
	
	li $v0, 1
	add $a0, $zero, $s0
	syscall