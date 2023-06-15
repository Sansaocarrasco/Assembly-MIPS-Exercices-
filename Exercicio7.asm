#crie um programa que leia uma letra em minúscula, e retornará a mesma letra, só que maiúscula. O mesmo deverá estar em um Loop infinito. a saida do loop se deve ao digitar a letra 'z'.

.data
	texto: .asciiz "\nSua letra em maísculo eh: "
	texto1: .asciiz "\n"
.text
	addi $t1, $zero, 90
	loop:
		li $v0, 12
		syscall
		add $s0, $v0, $zero
		Vogal:
			subi $t0, $s0, 32
			add $s0, $t0, $zero
			
			li $v0, 4
			la $a0, texto
			syscall
	
			li $v0, 11
			add $a0, $s0, $zero
			syscall
			
			li $v0, 4
			la $a0, texto1
			syscall
			
			beq $s0, $t1, exit
			j loop
	exit:	
	