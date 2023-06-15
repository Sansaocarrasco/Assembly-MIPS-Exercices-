.data
	texto1: .asciiz "\nSem azar\n"
	texto2: .asciiz "\nQue sorte\n"
	
	Vetor: 	.align 2
		.space 20
.text
	addi $s2, $zero, 0
	addi $t0, $zero, 5
	add $t1, $zero, $zero
	add $s1, $zero, $zero
	loop1:
		slt $t2, $t1, $t0
		beq $t2, $zero, exit
		
		li $v0, 5
		syscall
		add $s0, $v0, $zero
		
		sw $s0, Vetor($s1)
		
		addi $s1, $s1, 4
		addi $t1, $t1, 1
		j loop1
	exit:
	
	addi $t0, $zero, 5
	add $t1, $zero, $zero
	add $s1, $zero, $zero
	addi $t3, $zero, 13
	addi $t4, $zero, 7
	loop2:
		slt $t2, $t1, $t0
		beq $t2, $zero, exit2
		
		lw $s0, Vetor($s1)
		beq $s0, $t3, troca
		
		addi $s1, $s1, 4
		addi $t1, $t1, 1
		j loop2
	troca:
		sw $t4, Vetor($s1)
		
		addi $s1, $s1, 4
		addi $t1, $t1, 1
		addi $s2, $zero, 1
		j loop2
	exit2:
	
	addi $t0, $zero, 5
	add $t1, $zero, $zero
	add $s1, $zero, $zero
	loop3:
		slt $t2, $t1, $t0
		beq $t2, $zero, exit3
		
		li $v0, 1
		lw $a0, Vetor($s1)
		syscall
		
		addi $s1, $s1, 4
		addi $t1, $t1, 1
		j loop3
	exit3:
	
	beq $s2, $zero, msg1
	msg2:
		li $v0, 4
		la $a0, texto2
		syscall
		j exit4
	msg1:
		li $v0, 4
		la $a0, texto1
		syscall
		j exit4
	exit4:
	
		