programa
{
	
	inteiro operacao_cliente
	funcao inicio()
	{
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
		
		escreva("\n========MENU DE OPERACOES===========\n")
		escreva("1-Simulador de Descontos do Inss\n")
		escreva("2-Calculo das ferias\n")
		escreva("3-Desconto do imposto de renda\n")
		escreva("4-Simulador de adicional noturno\n")
		escreva("5-Simulador de horas extras\n")
		escreva("\n")
		escreva("Informe o numero da operacao escolhida: ")
		leia(operacao_cliente)

		escolha(operacao_cliente)
		{
			caso 1: simuladorInss()
			pare
			caso 2: simulador_calculo_ferias()
			pare
			caso 4: simulador_adicional_noturno()
			pare
			caso 5: simulador_horas_extras()
			caso 12: simulador_completo()
			
		}
	}
	funcao simuladorInss()
	{
		real descontoInss=0.0
		real valor_salario
		escreva("Informe o valor do salario:\n")
		leia(valor_salario)
		descontoInss = desconto_inss(valor_salario,descontoInss)
		escreva("O valor desconto de Inss do seu salario é de:","  ",descontoInss)
	}
	funcao real desconto_inss(real valor_salario,real descontoInss)
	{
		real salarioMinimo = 1302.0
		real desconto
		se(valor_salario<=salarioMinimo)
          {
               desconto = (valor_salario*0.075)
               retorne desconto
          }
          senao
          {
          	desconto =  (valor_salario*0.09)
          	retorne desconto
          }
		
		 
		
	}
	funcao simulador_calculo_ferias()
	{
	     real valor_ferias=0.0
		real total_ferias
		real valor_salario
		escreva("Informe o seu salario:\n")
		leia(valor_salario)
		total_ferias = calculo_ferias(valor_salario,valor_ferias)
	}
	funcao real calculo_ferias(real valor_salario,real valor_ferias)
	{
		
		
	     valor_ferias = valor_salario/3
          escreva("o valor acresentado de ferias ao seu salario é de:","R$",valor_ferias)
          
          retorne valor_ferias
          
	}
	funcao cadastro_cliente()
	{
		
	}
	funcao simulador_adicional_noturno()
	{
        real valorHoraTrabalho
        real salarioBruto
        inteiro cargaHoraria
        real valorHora
        real valorAdicionalNoturno
        real horasNoturnas
        real salarioAdicional
        escreva("Informe o valor do salario:\n")
        leia(salarioBruto)
        escreva("informe a carga horaria mensal:\n")
        leia(cargaHoraria)
        escreva("informe as horas noturnas trabalhadas:\n")
        leia(horasNoturnas)
	   valorHora = salarioBruto/cargaHoraria 
	   valorHoraTrabalho = valorHora*0.2
	   valorAdicionalNoturno = horasNoturnas* valorHoraTrabalho
        salarioAdicional = salarioBruto+valorAdicionalNoturno
        escreva("Seu salario bruto somado adicionado ao adicional noturno é de:", salarioAdicional)
	}
	funcao simulador_horas_extras()
	{
	   
	}
	funcao simulador_completo()
     {
     	real salarioBruto
     	inteiro horaExtra
     	
     	escreva("informe seu salario Bruto:\n")
     	leia(salarioBruto)
     	
     	simuladorInss()
     	
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3381; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */