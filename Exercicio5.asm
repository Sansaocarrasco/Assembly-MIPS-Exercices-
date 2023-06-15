#Crie um vetor de inteiros com os elementos: 2, 3, 0, 1, 4. Seu programa deverá trocar a posição do elemento 2 com o elemento 0 e o elemento 3 com o elemento 1. Por fim, mostre na tela, com uma função, o vetor após a alteração. 

.data
	vetor:	.word 2, 3, 0, 1, 4
.text
	addi $t0, $zero, 8
	lw $t1, vetor($zero)
	lw $t2, vetor($t0)
	sw $t1, vetor($t0)
	sw $t2, vetor($zero)
	addi $t3, $zero, 4
	addi $t0, $zero 12
	lw $t1, vetor ($t3)
	lw $t2, vetor ($t0)
	sw $t1, vetor ($t0)
	sw $t2, vetor ($t3)
	jal printar
	j exit1
	printar:
		add $s0, $zero, 0
		addi $s1, $zero, 20
		loop:
			beq $s0, $s1, exit
			lw $a0, vetor($s0)
			addi $v0, $zero, 1
			syscall
			addi $s0, $s0, 4
			j loop
		exit:
			jr $ra
	exit1: