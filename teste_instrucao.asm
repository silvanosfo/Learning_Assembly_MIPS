.data

	VAR_X:	.word 	33	#guardado na ram
	VAR_Y:	.word	22	#guardado na ram 4 posiçoes a seguir



.text

main:	
	la 	$t0, VAR_X	#carrega o endereço RAM da variavel para o registo
	lw	$t1, 0($t0)	#carrega conteudo do emdereço RAM para o registo 
				# 0() -> deslocamento, obrigatório! Quando nao há deslocamento, o valor é ZERO! 0 obrigatorio colocar

	li	$t0, 150	#carrega imediato para o registo
	li	$t1,  120	#carrega imediato para o registo
	add	$s0, $t0, $t1

	li	$v0, 10		#necessario ao acabar programa
	syscall			#necessario ao acabar programa