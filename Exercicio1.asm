# Crie um programa que diferecie um numero par de um numero impar, que imprima na tela e depois finalize o programa, utilizando funções

.data
	print1: .asciiz "Digite um numero\n:"
	print2: .asciiz "O numero digitado eh par\n"
	print3: .asciiz "O numero digitado eh impar\n"
.text
	li $v0, 4
	la $a0, print1
	syscall
	
	li $v0, 5
	syscall
	
	add $a0, $v0, $zero
	jal Eh_impar
	jal Imprimir
	jal Finalizar
	Eh_impar:
		addi $t0, $zero, 2
		div $a0, $t0
		mfhi $a0
		jr $ra
	Imprimir:
		add $t0, $zero, $zero
		beq $a0, $t0, Par
		j Impar
		Par:
			li $v0, 4
			la $a0, print2
			syscall
			jr $ra
			
		Impar:
			li $v0, 4
			la $a0, print3
			syscall
			jr $ra
	Finalizar:
		li $v0, 10
		syscall