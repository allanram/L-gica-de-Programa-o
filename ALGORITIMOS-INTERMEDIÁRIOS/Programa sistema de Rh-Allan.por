programa
{
     
	inteiro operacao_cliente
	funcao inicio()
	{
		limpa()
		escreva("Olá,seja bem vindo(a) ao sistema de operaçoes do RH.\n")
		escreva("Para escolher a operação selecione a aba menu, digitanto o numero 1.\n")
		escreva("Para realizar cadastro digite 2.\n")
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
		escreva("8-Simulador multa do FGTS.\n")
		escreva("9-Simulador do Pis.\n")
		escreva("\n")
		escreva("Informe o numero da operacao escolhida: ")
		leia(operacao_cliente)

		escolha(operacao_cliente)
		{
			caso 1: simuladorInss()
			pare
			caso 2: simulador_calculo_ferias()
			pare
			caso 3: simulador_imposto_de_renda()
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
			pare
			caso 9: simulador_pis()
			pare
			
			
		}
	}
	funcao simuladorInss()
	{
		real descontoInss=0.0
		real valor_salario
		escreva("Informe o valor do salario:\n")
		leia(valor_salario)
		descontoInss = calculaDescontoInss(valor_salario,descontoInss)
		escreva("O valor desconto de Inss do seu salario é de:","  ",descontoInss)
		escreveLinha()
		retorna_menu()
	}
	funcao simulador_calculo_ferias()
	{
	     real valor_ferias=0.0
		real total_ferias
		real valor_salario
		escreva("Informe o seu salario:\n")
		leia(valor_salario)
		total_ferias = calculoFerias(valor_salario,valor_ferias)
	}
	funcao simulador_adicional_noturno()
	{
       const real PERCENTUAL_ADICIONAL = 0.2
       real salario_bruto
       real horas_contratuais
       real valor_adicional
       real valorAdicionalNoturno
       real salarioAdicionado
       inteiro horasNoturnasTrabalhadas
       escreva("Informe seu salario:\n")
       leia(salario_bruto)
       escreva("Informe o total de horas contratuais:\n")
       leia(horas_contratuais)
       escreva("Informe as horas noturnas trabalhadas:\n")
       leia(horasNoturnasTrabalhadas)
       valorAdicionalNoturno = calculaAdicionalNoturno(salario_bruto, horas_contratuais)*PERCENTUAL_ADICIONAL
       salarioAdicionado = (horasNoturnasTrabalhadas*valorAdicionalNoturno)+salario_bruto
       escreva("Seu salario adicionado as horas noturnas trabalhadas é de:"," ",salarioAdicionado)
       escreveLinha()
       retorna_menu()
	}
	funcao simulador_horas_extras()
	{    const inteiro HORA_MENSAL = 220
		const real EXTRA_50 = 1.5
		const real EXTRA_100 = 1.6
		real salarioBruto
		inteiro horas_adicionais
		real valor_extra
		real horaExtraTotal
		real salarioAdicionado
		
		escreva("Informe seu salario Bruto:\n")
	     leia(salarioBruto)
	     escreva("Informe o total de horas extras trabalhadas:\n")
	     leia(horas_adicionais)
	     valor_extra = salarioBruto/HORA_MENSAL
	     escreva("As horas extras trabalhadas envolve finais de semana e feriados:\n")
	     escreva("(Sim) = 1; (Não) = 2.\n")
	     leia(operacao_cliente)

          escolha(operacao_cliente)
          {
          	caso 1: valor_extra = (valor_extra*EXTRA_100)
          	        horaExtraTotal = valor_extra*horas_adicionais
          	        salarioAdicionado = horaExtraTotal+salarioBruto
          	        escreva("Seu salario somado as horas extras trabalhadas é de:",salarioAdicionado,".")
          	        escreveLinha()
          	        retorna_menu()
          	pare
          	caso 2: valor_extra = (valor_extra*EXTRA_50)
          	        horaExtraTotal = valor_extra*horas_adicionais
          	        salarioAdicionado  = horaExtraTotal+salarioBruto
          	        escreva("Seu salario somado as horas extras trabalhadas é de:",salarioAdicionado,".")
          	        escreveLinha()
          	        retorna_menu()
              pare
          }
          
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
     funcao simulador_multa_fgts()
     {
       real valorSalario=0.0
       inteiro meses=0
       real fgts
       real multaFgts
       real fgtsTotal
       
       fgts =  valorSalario*0.08
       fgtsTotal = contribuicaoFgts(fgts,meses)
       multaFgts =  fgtsTotal*0.2
       escreva("Seu deposito extra sobre o FGTS é de","R$",multaFgts)
       escreveLinha()
       retorna_menu()
     }
     funcao simulador_pis()
     {
     	const real VALOR_MES =  108.50
     	real valorPis
     	real salario
     	inteiro meses
     	escreva("Informe seu salario:\n")
     	leia(salario)

     	se(salario<2604.0)
     	{
     		escreva("Sinto muito voce não tem direito ao beneficio Pis.")
     		escreveLinha()
     		retorna_menu()
     	}
     	senao se(salario>=2604.0)
     	{
     		
               para(inteiro cont=1;cont<2;cont++)
               {
               	escreva("informe quantos meses voce trabalhou: ")
                    leia(meses)
                    valorPis = VALOR_MES*meses
               	escreva("O valor que esta disponivel de beneficio do Pis é de:",valorPis)
               	escreveLinha()
     		     retorna_menu()
               }
     	}
     }
     funcao simulador_imposto_de_renda()
     {
     	real valor_salario
     	real descontoInss=0.0
     	real impostoRenda
     	real descontoImpostoDeRenda
     	escreva("Informe seu salario:\n")
     	leia(valor_salario)
          impostoRenda = valor_salario - calculaDescontoInss( valor_salario,descontoInss)
          escreva(impostoRenda)
     	se(valor_salario<1903.98)
     	{
     		escreva("Voce esta insento ao imposto de renda.\n")
     		escreveLinha()
     		retorna_menu()
     	}
     	senao se(valor_salario>=1903.98)
     	{
     		se(valor_salario<=2826.65)
     		{
     			descontoImpostoDeRenda = (impostoRenda*7.5/100)-142.80
     			escreva("Seu desconto de imposto de Renda é de:",descontoImpostoDeRenda)
     			escreveLinha()
     			retorna_menu()
     		}
     		
     	}
     	senao se(valor_salario<=3751.05)
     	{
     		
     	}
     	senao se(valor_salario<=4664.68)
     	{
     		
     	}
     	senao
     	{
     		
     	}
     }
     funcao cadastro_cliente()
    {
    	
    }
	funcao real calculaDescontoInss(real valor_salario,real descontoInss)
	{
		real salarioMinimo = 1302.0
		real desconto
		se(valor_salario<=salarioMinimo)
          {
               desconto = (valor_salario*0.075)
               retorne desconto
          }
          senao se(valor_salario<=2571.29)
          {
          	desconto =  (valor_salario*0.09)
          	retorne desconto
          }
		senao se(valor_salario<=3856.94)
		{
			desconto =  (valor_salario*0.12)
          	retorne desconto
		}
		senao
		{
			desconto =  (valor_salario*0.14)
          	retorne desconto
		}
		 
		
	}
	funcao real calculoFerias(real valor_salario,real valor_ferias)
	{
		
		
	     valor_ferias = valor_salario/3
          escreva("o valor acresentado de ferias ao seu salario é de:","R$",valor_ferias)
          
          retorne valor_ferias
          
	}
	funcao real calculaAdicionalNoturno(real salario_bruto, real horas_contratuais)
     {
          
          real valor_adicional
	     valor_adicional = (salario_bruto/horas_contratuais)
          retorne salario_bruto/horas_contratuais
    
	   
     }
	funcao real adicional_periculosodade(real salarioBruto)
	{
		real adicionalTotal = salarioBruto*0.3
		retorne adicionalTotal
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6506; 
 * @DOBRAMENTO-CODIGO = [4, 25, 67, 78, 87, 108, 146, 156, 172, 187, 216, 256, 260, 287, 297, 306, 311, 323, 342];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */