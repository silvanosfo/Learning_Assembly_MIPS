.data

	VAR_I:	.word 	7	#guarda na ram
	VAR_H:	.word	0	#guarda na ram


.text

main:	
	la 	$t0, VAR_I	#endereço RAM da VAR_I para o registo t0
	la 	$t1, VAR_H	#endereço RAM da VAR_H para o registo t1

	lw	$s0, 0($t0)	#conteudo endereço RAM da VAR_I para o registo s0
	lw	$s1, 0($t1)	#conteudo endereço RAM da VAR_H para o registo s1

				# 0() -> deslocamento, obrigatório! 
				# Quando nao há deslocamento, o valor é ZERO!
				# É obrigatorio colocar o 0()!!!!!
	
	# h= idade * 1000 + 12 - (4 * 2)

	li	$s2, 1000		# Guardar 1000 nos registos
	mul	$s1, $s0, $s2	# h= idade * 1000
	li	$s3, 2		# 2
	li	$s4, 4		# 4
	mul	$s5, $s3, $s4	# (4 * 2)
	addi	$s1, $s1, 12
	sub	$s1, $s1 ,$s5

	sw	$s1, 0($t1)	#guarda o valor de s1(VAR_H) no endereço t1(VAR_H)

	li	$v0, 10		#necessario ao acabar programa
	syscall