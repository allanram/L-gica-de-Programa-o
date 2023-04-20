programa
{
	
inclua biblioteca Matematica

	
	funcao inicio()
	{
		inteiro operacao_cliente
		escreva("\nOlá,seja bem vindo(a) ao sistema de operaçoes do RH.")
		escreva("\nPara escolher a operação selecione a aba menu, digitanto o numero 1.\n")
		escreva("\nPara realizar cadastro digite 2.\n")
		escreva("Digite um numero:\n")
		leia(operacao_cliente)

		escolha(operacao_cliente)
		{
			caso 1: menu_operacoes()
			pare
			caso 2:cadastro_cliente()
			pare
			caso contrario:
			escreva("selecione uma opcao disponivel.")
			pare
			    
		}
		
		
	}
	funcao menu_operacoes()
	{
		inteiro selecao_operacao
		escreva("\n========MENU DE OPERACOES===========\n")
		escreva("1-Calcula operacoes do INSS\n")
		escreva("2-Calculo das ferias\n")
		escreva("3-Desconto do imposto de renda\n")
		escreva("\n")
		escreva("Informe o numero da operacao escolhida: ")
		leia(selecao_operacao)

		escolha(selecao_operacao)
		{
			caso 1:inss_operacoes()
			pare
			caso 2: calculo_ferias()
			pare
			caso 3: imposto_de_renda()
			
		}

	
	}
     funcao inss_operacoes()
	{
		real valor_salario
		escreva("Informe o valor do salario:\n")
		leia(valor_salario)
          
	    
	}
	funcao real desconto_inss(real valor_salario,real desconto_do_inss)
	{
		real salario_minimo =1302.0
		
		se(valor_salario<=salario_minimo)
		{
			desconto_do_inss = (valor_salario*0.075)
			
		}
		senao
		{
			desconto_do_inss = (valor_salario*0.09)
			
		}
		retorne valor_salario*desconto_do_inss
		
	}
	funcao imposto_de_renda()
	{
		
	}
	funcao inteiro calculo_ferias()
	{
		real valor_salario
		inteiro ferias_folga
	     escreva("Informe o valor do salário recebido no mes anterior:\n")
	     leia(valor_salario)
	     ferias_folga = valor_salario/3
          escreva("o valor acresentado de ferias ao seu salario é de:","R$",ferias_folga)
          
          retorne ferias_folga
          
	}
	funcao cadastro_cliente()
	{
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 47; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */