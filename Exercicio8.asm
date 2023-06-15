.data
	texto:	.asciiz "A senha da conta eh: Senha"
	texto2:	.asciiz "Erro!"
	
.text
	addi $t0, $zero, 42
	addi $t1, $zero, 1
	addi $t2, $zero, 82
	addi $t3, $zero, 29
	addi $t4, $zero, 13
	j primeiro
	primeiro:
		li $v0, 5
		syscall
		add $s0, $v0, $zero
		
		beq $s0, $t0, segundo
		j exit
	segundo:
		li $v0, 5
		syscall
		add $s0, $v0, $zero
		
		beq $s0, $t1, terceiro
		j exit
	terceiro:
		li $v0, 5
		syscall
		add $s0, $v0, $zero
		
		beq $s0, $t2, quarto
		j exit
	quarto:
		li $v0, 5
		syscall
		add $s0, $v0, $zero
		
		beq $s0, $t3, quinto
		j exit
	quinto:
		li $v0, 5
		syscall
		add $s0, $v0, $zero
		
		beq $s0, $t4, senha
		j exit
	senha:
		li $v0, 4
		la $a0, texto
		syscall
		j exit1
	exit:
		li $v0, 4
		la $a0, texto2
		syscall
		j exit1
	exit1:

		
		
		
		