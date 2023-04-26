programa
{
     
	inteiro operacao_cliente
	funcao inicio()
	{
		limpa()
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
		
		limpa()
		escreva("\n========MENU DE OPERACOES===========\n")
		escreva("1-Simulador de Descontos do Inss\n")
		escreva("2-Calculo das ferias\n")
		escreva("3-Desconto do imposto de renda\n")
		escreva("4-Simulador de adicional noturno\n")
		escreva("5-Simulador de horas extras\n")
		escreva("6-Simulador adicional por Periculosidade\n")
		escreva("7-Simulador contribuição FGTS\n")
		escreva("8-Simulador multa dpn FGTS.\n")
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
			pare
			caso 6: simulador_adicional_periculosidade()
			pare
			caso 7: simulador_contribuicao_fgts()
			pare
			caso 8:simulador_multa_fgts()
			
			
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
		escreva("\n____________\n")
		retorna_menu()
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
	funcao simulador_adicional_periculosidade()
	{
		real salarioBruto
		real adicionalPericulo
		escreva("Informe seu salário Bruto:\n")
		leia(salarioBruto)
		adicionalPericulo = salarioBruto*0.3
          escreva("Seu salario somado a periculosidade/mes é de:",adicionalPericulo+salarioBruto)
          escreva("\nSeu adicional de periculosidade é de:",adicionalPericulo)
	}
	funcao real adicional_periculosodade(real salarioBruto)
	{
		real adicionalTotal = salarioBruto*0.3
		retorne adicionalTotal
	}
	funcao retorna_menu()
	{
		
		escreva("deseja voltar ao menu de operaçoes ou ao inicio?\n")
		escreva("\n====OPÇOES====\n")
		escreva("(1)-Menu de operaçoes.\n")
		escreva("(2)-Tela inicial.\n")
		escreva("(3)-encerra Programa.\n")
		leia(operacao_cliente)
		escolha(operacao_cliente)
		{
			caso 1:  menu_operacoes()
			pare
			caso 2: inicio()
			pare
			caso 3: escreva("Obrigado pela presença!!!")
			pare
		}
	}
	funcao escreveLinha()
	{
		escreva("\n_____________________________________\n")
	}
	funcao simulador_contribuicao_fgts()
     {
     	real valorSalario,contribuicao
     	inteiro meses
     	real fgts
     	escreva("Informe seu salario:\n")
     	leia(valorSalario)
     	fgts = valorSalario*0.08
     	escreva("\nInforme o numero de meses trabalhados:\n")
     	leia(meses)
     	contribuicao = fgts*meses
     	escreva("Sua contribuição atual é de:",contribuicao,",","sendo contribuido (R$)",fgts,"por mes.\n")
     	escreveLinha()
     	retorna_menu()
     
     }
     funcao real contribuicaoFgts(real fgts,inteiro meses)
     {
     	real valorSalario
     	real contribuicao_fgts
     	escreva("Informe seu salário:\n")
     	leia(valorSalario)
     	escreva("\nInforme o numero de meses trabalhados:\n")
     	leia(meses)
     	fgts = valorSalario*0.08
          contribuicao_fgts =  fgts*meses
          retorne  fgts*meses
     }
     funcao simulador_multa_fgts()
     {
       real valorSalario
       inteiro meses
       real fgts
       real multaFgts
       real fgtsTotal
       escreva("Inforne seu salario:\n")
       leia(valorSalario)
       escreva("Informe o total de meses trabalhados.\n")
       leia(meses)
       fgts =  valorSalario*0.08
       fgtsTotal = contribuicaoFgts(fgts,meses)
       multaFgts =  fgtsTotal*0.2
       escreva("Seu deposito extra sobre o FGTS é de","R$",multaFgts)
       escreveLinha()
       retorna_menu()
     }
    
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5403; 
 * @DOBRAMENTO-CODIGO = [4, 25, 61, 72, 90, 99, 109, 113, 134, 138, 148, 153, 172, 176, 192, 204];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */