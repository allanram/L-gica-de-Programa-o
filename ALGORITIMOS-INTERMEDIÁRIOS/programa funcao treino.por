programa
{
	
	funcao inicio()
	{
		menu()
		inteiro opcao_escolhida
		leia(opcao_escolhida)

		seletor_programa(opcao_escolhida)
	}
	funcao seletor_programa(inteiro opcao_escolhida)
	{
		escolha(opcao_escolhida)
		{
			caso 1:
			     calcula_passo()
			pare
			caso 2:
			     calcula_notas()
			pare
			caso 3:
			     da_bom_dia()
			pare
			caso 4:
			   calcula_imc()
			pare
			caso 5:
			     classifica_valor()
			pare
			caso 6:
			     acha_menor_numero()
			pare
			caso 7:
			     recomenda_menor_preco()
			pare
		}
	}
	funcao menu()
	{
		escreva("SISTEMA MULTI TAREFAS \n")
		escreva("_________________________\n")
		escreva("\n")
		escreva("1 - Programa que calcula passos\n")
		escreva("2 - Programa que calcula nota\n")
		escreva("3 - Programa que da bom dia\n")
		escreva("4 - Programa que calcula seu IMC")
		escreva("5 - programa que identifica se valor é positivo ou negativo")
		escreva("6 - Programa acha menor numero")
	}
	funcao logico voltar_menu()
	{
		caracter escolha_usuario
		faca
		{
			escreva("Deseja voltar ao menu? (s)sim (n)Não ")
			leia(escolha_usuario)
			
		}enquanto(escolha_usuario != 's' ou escolha_usuario != 'n')

		se(escolha_usuario == 's')
		{
			retorne verdadeiro
		}
		senao
		{
			retorne falso
		}
	}
	funcao calcula_passo()
	{
	     escreva("Seja bem vindo(a),ao progra que calcula passos")
	     const real METROS_POR_PASSO = 0.82
	     real distancia_percorrida,quantidade_passos
          inteiro cont=0
          faca
          {
	     escreva("qual a distancia percorrida em KM?\n")
	     escreva("distancia em KM = ")
	     leia(distancia_percorrida)

	     quantidade_passos = distancia_percorrida*(1000/METROS_POR_PASSO)

	     escreva(distancia_percorrida, "KM é equivalente a",distancia_percorrida,"passos")
          voltar_menu()
          }enquanto(cont<1)
          voltar_menu()
	}
	funcao calcula_notas()
	{
	     escreva("Seja bem vindo(a),ao progra que calcula a media de duas notas")
	     real nota[2],media
	     inteiro cont=0
		faca
		{
			escreva("Qual a sua primeira nota? ")
			leia(nota[0])
			escreva("Qual a sua segunda nota? ")
			leia(nota[1])
			media = (nota[0]+nota[1])/2

			escreva("Sua média é:",media)
			escreva("\n___________________\n")
			se(media<6)
			{
				escreva("Voce esta de recuperação")
			}
			senao
			{
				escreva("Parabens, voce foi aprovado")
			}
		}enquanto(cont<1)
		voltar_menu()
	}
	funcao da_bom_dia()
	{
		cadeia nome,homens_comprimentados,mulheres_comprimentadas
		caracter sexo = 'f'
		inteiro quant_pessoas,controle=0,cont=0
		
          escreva("Quantas pessoas serao dadas boas vindas? ")
		leia(quant_pessoas)
		controle= quant_pessoas
		faca
		{
			escreva("\nInforme seu sexo: ")
			leia(sexo)
			escreva("\nQual seu nome? ")
		     leia(nome)
		     escolha(sexo)
		     {
		     	caso 'f': escreva("Bom dia Sra.",nome)
                    pare
                    caso contrario:
                    escreva("Bom dia Sr.",nome)
		     }
		      controle++
		}enquanto(cont<1)
		voltar_menu()
	}
	funcao calcula_imc()
	{
		real peso,altura,imc
		inteiro cont=0
		faca
		{
		  escreva("Qual seu peso? ")
		  leia(peso)
		  escreva("Qual sua altura? ")
		  leia(altura)

		  imc = peso/(altura*altura)
		  escreva("imc: " + imc)
		}enquanto(cont<1)
		
		se(imc<17)
		{
			escreva("\n muito abaixo do peso")
		}
		senao se(imc<18.50)
		{
			escreva("\n abaixo do peso")
		}
		senao se(imc<25)
		{
			escreva("\n peso normal")
		}
		senao se(imc<30)
          {
          	escreva("\n acima do peso")
          }
          senao se(imc<35)
          {
          	escreva("\n obesidade 1")
          }
          senao se(imc<40)
          {
          	escreva("\n obesidade 2(severa)")
          }
          senao
          {
          	escreva("\n obesidade 3 (morbida)")
          }
          voltar_menu()
	}
	funcao classifica_valor()
	{
		inteiro valor
		escreva("informe um valor ")
		leia(valor)
		 se( valor<0)
		 {
		 	escreva("valor negativo")
		 }
		 senao
		 {
		 	escreva("valor positivo")
		 }
		 voltar_menu()
	}
	funcao acha_menor_numero()
	{
		inteiro num1,num2,num3
		escreva("informe o primeiro numero")
		leia(num1)
		escreva("informe o segundo numero")
		leia(num2)
		escreva("informe o terceiro numero")
		leia(num3)

		se(num1<num2)
		{
			se(num1<num3)
			{
				escreva("menor numero é: "+num1)
			}
			senao
			{
				escreva("menor numero é: "+num3)
			}
		}
		senao
		{
			se(num2<num3)
			{
				escreva("menor numero é: "+num2)
			}
			senao
			{
				escreva("menor numero é: "+num3)
			}
		}
		voltar_menu()
	}
	funcao recomenda_menor_preco()
	{
	   cadeia nome_produto[3]
		real valor_produto[3]
		inteiro contador = 0

           faca
           {
		   escreva("Usuário me informe o nome dos produtos \n")
		   escreva("Produto 1: ")
		   leia(nome_produto[0])
		   escreva("Produto 2: ")
		   leia(nome_produto[1])
		   escreva("Produto 3: ")
		   leia(nome_produto[2])
		   escreva("\n=================\n")

		   se(valor_produto[0]<valor_produto[1])
            {
          	  se(valor_produto[0]<valor_produto[2])
          	  {
          		escreva("Te recomendo comprar",nome_produto[0])
          	  }
            }
            senao se(valor_produto[1]<valor_produto[2])
            {
          	escreva("Te recomendo comprar ",nome_produto[1])
            }
            senao
            {
          	escreva("Te recomendo comprar ",nome_produto[2])
            }
		 
            }enquanto(contador<1)
            voltar_menu()	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4596; 
 * @DOBRAMENTO-CODIGO = [3, 11, 38, 50, 69, 88, 114, 140, 185, 200, 234];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */