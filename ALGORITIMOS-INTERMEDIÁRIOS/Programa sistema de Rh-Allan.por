programa
{
     inclua biblioteca Matematica -->M
     inclua biblioteca Arquivos -->arq
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
		escreva("10-Simulador seguro desemprego.\n")
		escreva("11-Simulador vale transporte.\n")
		escreva("12-Simulação Completa.\n")
		escreveLinha()
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
			caso 8: simulador_multa_fgts()
			pare
			caso 9: simulador_pis()
			pare
			caso 10: simulador_seguro_desemprego()
			pare
			caso 11: simulador_vale_transporte()
			pare
			caso 12: Simulacao_completa()
			
			
		}
	}
	funcao simuladorInss()
	{
		real descontoInss=0.0
		real salario_bruto
		escreva("Informe o valor do salario:\n")
		leia(salario_bruto)
		descontoInss = calculaDescontoInss(salario_bruto)
		escreva("O valor desconto de Inss do seu salario é de:","  ",descontoInss)
		escreveLinha()
		retorna_menu()
	}
	funcao simulador_calculo_ferias()
	{
	     real valor_ferias=0.0
		real total_ferias
		real salario_bruto
		escreva("Informe o seu salario:\n")
		leia(salario_bruto)
		total_ferias = calculoFerias(salario_bruto)
		escreva("O valor das suas férias é de:","R$",total_ferias)
		escreveLinha()
		retorna_menu()
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
	{
		
		real salario_bruto
		inteiro horas_adicionais
		const inteiro HORA_MENSAL = 220
		real total_extra
		escreva("Informe seu salario Bruto:\n")
	     leia(salario_bruto)
	     escreva("Informe o total de horas extras trabalhadas:\n")
	     leia(horas_adicionais)
	     total_extra =  calculaValorHoraExtra(salario_bruto,horas_adicionais)
	     escreva("Seu salário adicionado as hora extras é de:",total_extra)
	     escreveLinha()
	     retorna_menu()
	     
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
     funcao simulador_seguro_desemprego()
     {
              real salario1,salario2,salario3
              real valor_parcela
              escreva("informe o valor dos 3 ultimos salários recebidos:\n")
              escreva("Salario 1:\n")
              leia(salario1)
              escreva("Salario 2:\n")
              leia(salario2)
              escreva("Salario 3:\n")
              leia(salario3)
              valor_parcela = calculaSeguroDesemprego(salario1,salario2,salario3)
              escreva("O valor da parcela do seu seguro desemprego é de:","R$",valor_parcela)
     }
     funcao simulador_imposto_de_renda()
     {
     	real valor_salario
     	real valor_imposto_de_renda
     	escreva("Informe seu salário:\n")
     	leia(valor_salario)
     	valor_imposto_de_renda = calculaValorDoImpostodeRenda(valor_salario)
     	escreva("O valor do desconto do imposto de renda é:","R$",valor_imposto_de_renda)
     	escreveLinha()
     	retorna_menu()
     }
     funcao simulador_vale_transporte()
     {
     	const real PERCENTUAL_DESCONTO = 0.06
     	real salario_bruto
     	real valor_desconto
     	escreva("informe seu salário:\n")
     	leia(salario_bruto)
     	valor_desconto = calculaDescontoValeTrasporte(salario_bruto)
          valor_desconto = M.arredondar(valor_desconto,2)
          escreva("O valor descontado de vale transporte é de:",valor_desconto)
          escreveLinha()
          escreva("Deseja saber se o beneficio do Vale Transporte é viavel?\n")
          escreva("Caso sim, Digite o numero 1.\n")
          escreva("caso contrário digite 3 e será direcionado(a) ao menu de operaçoes.\n")
          escreva("Digite um numero:\n")
          leia(operacao_cliente)

         se(operacao_cliente == 1)
         {
           real salario_descontado
           salario_descontado = salario_bruto
          
         }
     	
     }
     funcao Simulacao_completa()
     {
         real salario_bruto
         real horas_adicionais
         caracter possui_acao
         limpa()
         escreva("\n============DADOS==============\n")
         escreva("Salario Bruto =","R$")
         leia(salario_bruto)
         escreva("Horas Extras =")
         leia(horas_adicionais)
         escreva("O seu salario possui adicional de periculosidade? SIm(S)/Não(N):")
         leia(possui_acao)
         se(possui_acao == 'S')
         {
         	escreva("Periculosidade =S")
         }
         senao se(possui_acao =='N')
         {  
         	 escreva("Periculosidade =N")
         }
         
         	
     }
     funcao cadastro_cliente()
    {
    	 inteiro quant_pessoa 
    	 cadeia arquivos 
    	 cadeia linha
    	 escreva("Bem vindo a Pagina de cadastro.\n")
    	 escreva("informe a quantidade de pessoas que deseja cadastrar:\n")
    	 leia(quant_pessoa)
    	 
    	
    	 	
    	 	inteiro arquivo = arq.abrir_arquivo("./BancoDeDados.txt",arq.MODO_ESCRITA)
          
          arq.escrever_linha("teste_arquivo",arquivo)
    	     
    	     arq.fechar_arquivo(arquivo)
    	 	
    	
    }
     funcao real calculaSeguroDesemprego(real salario1,real salario2,real salario3)
     {
     	
     	real media_salario
     	real seguro_desemprego
     
               media_salario = (salario1+salario2+salario3)/3
               
               se(media_salario<=1986.36)
               {
               	seguro_desemprego = media_salario*0.80
               	retorne seguro_desemprego
               }
               senao se(media_salario<=3280.93)
               {
               	seguro_desemprego = (media_salario*0.50)+1574.69
               	retorne seguro_desemprego
               }
               senao
               {
               	seguro_desemprego = 2230.97
               	retorne seguro_desemprego
               }
     	
         
     }
	funcao real calculaDescontoInss(real salario_bruto)
	{
		real salarioMinimo = 1302.0
		real desconto
		se(salario_bruto<=salarioMinimo)
          {
               desconto = (salario_bruto*0.075)
               retorne desconto
          }
          senao se(salario_bruto<=2571.29)
          {
          	desconto =  (salario_bruto*0.09)
          	retorne desconto
          }
		senao se(salario_bruto<=3856.94)
		{
			desconto =  (salario_bruto*0.12)
          	retorne desconto
		}
		senao
		{
			desconto =  (salario_bruto*0.14)
          	retorne desconto
		}
		 
		
	}
	funcao real calculoFerias(real salario_bruto)
	{
		
		real valor_ferias
	     valor_ferias = (salario_bruto/3)+salario_bruto - calculaDescontoInss(salario_bruto)-calculaValorDoImpostodeRenda(salario_bruto)
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
     funcao real calculaValorDoImpostodeRenda(real salario_bruto)
     {
     	
     	
     	real impostoRenda
     	real descontoImpostoDeRenda

          impostoRenda = salario_bruto- calculaDescontoInss(salario_bruto)
         
     	se(salario_bruto<1903.98)
     	{
     		descontoImpostoDeRenda = 0.0
     		retorne descontoImpostoDeRenda
     	}
     	senao se(salario_bruto<=2826.65)
     	{
     		
     		descontoImpostoDeRenda = (impostoRenda*7.5/100)
     		retorne descontoImpostoDeRenda
     	}
     	senao se(salario_bruto<=3751.05)
     	{
     		descontoImpostoDeRenda = (impostoRenda*15/100)
     		retorne descontoImpostoDeRenda
     	}
     	senao se(salario_bruto<=4664.68)
     	{
     		descontoImpostoDeRenda = (impostoRenda*22.5/100)
     		retorne descontoImpostoDeRenda
     	}
     	senao
     	{
     		descontoImpostoDeRenda = (impostoRenda*27.5/100)
     		retorne descontoImpostoDeRenda
     	}
     }
     funcao real calculaValorHoraExtra(real salario_bruto,inteiro horas_adicionais)
	{    
		const inteiro HORA_MENSAL = 220
		const real EXTRA_50 = 1.5
		const real EXTRA_100 = 1.6
		real valor_extra
		real horaExtraTotal
		real salarioAdicionado=0.0
		
		
	     valor_extra = salario_bruto/HORA_MENSAL
	     escreva("As horas extras trabalhadas envolve finais de semana e feriados:\n")
	     escreva("(Sim) = 1; (Não) = 2.\n")
	     leia(operacao_cliente)

          escolha(operacao_cliente)
          {
          	caso 1: valor_extra = (valor_extra*EXTRA_100)
          	        horaExtraTotal = valor_extra*horas_adicionais
          	        salarioAdicionado = horaExtraTotal+salario_bruto
          	        
          	pare
          	caso 2: valor_extra = (valor_extra*EXTRA_50)
          	        horaExtraTotal = valor_extra*horas_adicionais
          	        salarioAdicionado  = horaExtraTotal+salario_bruto
          	        
          }
          retorne salarioAdicionado
	}
	funcao real calculaDescontoValeTrasporte (real salario_bruto)
     {
     	const real PERCENTUAL_DESCONTO = 0.06
     	real valor_desconto
     	valor_desconto = salario_bruto*PERCENTUAL_DESCONTO
     	retorne valor_desconto
     }
     funcao real verificaSeCompensaValeTransporte(real salario_bruto)
     {
     	const real VALOR_PASSAGEM = 4.60
         	const inteiro VALETRASNP_USADO_POR_DIA = 4 
         	const inteiro DIAS_UTEIS = 20
         	real valor_com
         	real valor_gradual
         	valor_gradual = (VALOR_PASSAGEM*VALETRASNP_USADO_POR_DIA*DIAS_UTEIS)
         	retorne valor_gradual
         	
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
		escreva("\n____________________________________________________________\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8526; 
 * @DOBRAMENTO-CODIGO = [5, 26, 77, 88, 100, 121, 138, 148, 164, 179, 208, 222, 233, 258, 282, 301, 327, 354, 362, 371, 376, 388, 424, 453, 460, 471, 490];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */