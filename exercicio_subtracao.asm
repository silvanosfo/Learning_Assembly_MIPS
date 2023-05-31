.data

	VAR_X:	.word 	7	#guarda na ram
	VAR_Z:	.word	0	#guarda na ram


.text

main:	
	la 	$t0, VAR_X	#endereço RAM da VAR_X para o registo t0
	la 	$t1, VAR_Z	#endereço RAM da variavel VAR_Z para o registo t1

	lw	$s0, 0($t0)	#conteudo endereço RAM da VAR_X para o registo s0
	lw	$s1, 0($t1)	#conteudo endereço RAM da VAR_Z para o registo s1

				# 0() -> deslocamento, obrigatório! 
				# Quando nao há deslocamento, o valor é ZERO!
				# É obrigatorio colocar o 0()!!!!!

	addi	$s0, $s0, 12	#guarda no s0, o valor s0(VAR_X) +12
	addi	$s0, $s0, 4	#guarda no s0, o valor s0(VAR_X) +4

	addi	$s1, $s0, -2	#guarda no s1(VAR_Z), a soma do valor de s0(VAR_X) +(-2)

	sw	$s1, 0($t1)	#guarda o valor de s1(VAR_Z) no endereço t1(VAR_Z)
	sw	$s0, 0($t0)	#guarda o valor de s0(VAR_X) no endereço t0(VAR_X)

	li	$v0, 10		#necessario ao acabar programa
	syscall