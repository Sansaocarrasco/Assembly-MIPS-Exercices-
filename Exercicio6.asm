#Faça um programa que mostre na tela todos os numeros impares de 0 a 100 enumerando-os em ordem crescente

.data
	texto: .asciiz ": "
	texto2: .asciiz "\n"
.text
	addi $s0, $zero, 1
	addi $t2, $zero, 1
	addi $t0, $zero, 100
	loop:
		slt $t1, $s0, $t0
		beq $t1, $zero, exit
		
		li $v0, 1
		add $a0, $t2, $zero
		syscall
		
		li $v0, 4
		la $a0, texto
		syscall
		
		li $v0, 1
		add $a0, $s0, $zero
		syscall
		
		li $v0, 4
		la $a0, texto2
		syscall
		
		addi $t2, $t2, 1
		addi $s0, $s0, 2
		j loop
	exit: 
