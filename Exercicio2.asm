# Crie um programa que faça um vetor de 4 posições e peça para o usuário preenchê-lo. Após isso, imprima o vetor.

.data
	Vetor:	.align 2
		.space 16
.text
	addi $t0, $zero, 0
	addi $t1, $zero, 4
	add $s1, $zero, $zero
	loop:
		slt $t2, $t0, $t1
		beq $t2, $zero, exit
		li $v0, 5
		syscall
		sw $v0, Vetor($s1)
		addi $s1, $s1, 4
		addi $t0, $t0,1
		j loop
	exit:
	addi $t0, $zero, 0
	addi $t1, $zero, 4
	add $s1, $zero, $zero
	loop2:
		slt $t2, $t0, $t1
		beq $t2, $zero, exit2
		li $v0, 1
		lw $a0, Vetor($s1)
		syscall
		addi $s1, $s1, 4
		addi $t0, $t0, 1
		j loop2
	exit2:
	
	