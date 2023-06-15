# Crie um programa que leia a string "ascii" e troque suas letras minúsculas pelas suas respectivas em maiúsculas. Mostre a palavra antes e depois.

.data
	palavra: .asciiz "ascii"
	texto1:	.asciiz "\nA palavra antes era:\n"
	texto2: .asciiz "\nAgora a palavra eh:\n"
.text

	li $v0, 4
	la $a0, texto1
	syscall
	
	li $v0, 4
	la $a0, palavra
	syscall
	
	add $s0, $zero, $zero
	addi $s1, $zero, 1
	addi $s2, $zero, 2
	addi $s3, $zero, 3
	addi $s4, $zero, 4
	addi $t1, $zero, 65
	addi $t2, $zero, 83
	addi $t3, $zero, 67
	addi $t4, $zero, 73
	sb $t1, palavra($s0) #escrevendo como caractere store bit
	sb $t2, palavra($s1)
	sb $t3, palavra($s2)
	sb $t4, palavra($s3)
	sb $t4, palavra($s4)
	
	li $v0, 4
	la $a0, texto2
	syscall
	
	li $v0, 4
	la $a0, palavra
	syscall