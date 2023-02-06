Algoritmo "netuno"
// Disciplina   : [Linguagem e Lógica de Programação]
// Autor(a)    : Patrick Luiz Duque de Paula Nascimento
// Programa    : Netuno - Fasters
// Data atual  : 09/01/2023
Var
   //Variaveis Globais
   separator, msg, space: Caractere
   option: Inteiro
   menu: vetor[1..6] de caracter
   topico: vetor [1..100] de Caractere
   indiceTopico: Inteiro
Inicio
   //Declarações Globais
      separator <- "............................................................"
      space <- "                                   "
      msg <- "Você Escolheu a opção: "
      menu[1] <-  "[1]Cadastrar novo tópico  "
      menu[2] <-  "[2]Listar todos  "
      menu[3] <-  "[3]Selecionar específico  "
      menu[4] <-  "[4]Deletar todos  "
      menu[5] <-  "[5]Tópicos em intervalor  "
      menu[6] <-  "[6]Sair  "
////////////////////////////////////////////////////////////////////////
// Funções
///////////////////////////////////////////////////////////////////////
    Procedimento apresentacao()
       inicio
           Escreval(separator)
           Escreval("Programa Netuno 2023, Segunda turma do Planeta dos Diamantes")
           Escreval("1º Projeto Aplicado - Algoritimos")
           Escreval("Candidato: Patrick Luiz")
           Escreval(separator)
           Escreval (space)
    FimProcedimento
///////////////////////////////////////////////////////////////////////
    Procedimento menu()
       Var
       i: inteiro
       inicio
             i <- 1
           Escreval("Bem vindo ao Menu Principal")
           Enquanto (i <= 6) faca
              Escreval (menu[i])
                 i <- i + 1
              FimEnquanto
           Escreva ("Selecione uma Opção: ")
           Leia (option)
           escolha option
                 Caso 1
                      intro()
                      case1()
                      Escreva ("Deseja Visualiza-los [2] ou ir para o Menu principal[0]?")
                      leia (option)
                      escolha option
                         Caso 2
                              case2()
                              return()
                         Caso 0
                              menu()
                         OutroCaso
                              Escreval ("Valor Invalido")
                              return()
                      FimEscolha
                 Caso 2
                      intro()
                      case2()
                      return()
                 Caso 3
                      intro()
                      case3()
                      return()
                 Caso 4
                      intro()
                      case4()
                      return()
                 Caso 5
                      intro()
                      case5()
                      return()
                 Caso 6
                      intro()
                      case6()
                 OutroCaso
                      Escreval ("Valor Invalido")
                      return()
         FimEscolha
         Escreval (separator)
     FimProcedimento
///////////////////////////////////////////////////////////////////////
    Procedimento intro()
       inicio
          Escreval (space)
          Escreval (separator)
          Escreval (msg, option)
     FimProcedimento
///////////////////////////////////////////////////////////////////////
    Procedimento return()
       Var
          i: inteiro
       inicio
       Escreval (space)
       Escreval (separator)
       Escreval (" Deseja Sair Ou Continuar no Programa ? ")
       Escreva (" Digite [1] para SAIR ou [0] para o Menu principal ")
       Leia (i)
       escolha i
          Caso 1
               Fimalgoritmo
           Caso 0
               menu()
           OutroCaso
               Escreval ("Valor Invalido")
               return()
       FimEscolha
     Escreval (separator)
     Escreval (space)
     FimProcedimento
///////////////////////////////////////////////////////////////////////
    Procedimento case1()
       Var
          i, v: inteiro
       inicio
          Escreval (separator)
          Escreval (menu[1])
          Escreva ("Quantos Topícos Gostaria de Criar? ")
          //Entrada
          Leia (i)
          Se(indiceTopico < 1)  entao
             indiceTopico <- i
             Enquanto (i >= 1) faca
                Escreval (i, "º Tópico Digite para Cadastrar: ")
                Leia (topico[i])
                Escreval("Você Cadastrou o Topíco: ", topico[i])
                i <- i - 1
             FimEnquanto
             senao
                v <- indiceTopico
                i <- indiceTopico + i
                indiceTopico <- i
                Enquanto ( i > v) faca
                   Escreval (i, "º Tópico Digite para Cadastrar: ")
                   Leia (topico[i])
                   Escreval("Você Cadastrou o Topíco: ", topico[i])
                   i <- i - 1
                FimEnquanto
          FimSe
          Escreval ("Obrigado por Cadastrar os Tópicos")
        FimProcedimento
///////////////////////////////////////////////////////////////////////
    Procedimento case2()
       Var
       i: Inteiro
       inicio
       //ENTRADA
          i <- indiceTopico
          Escreval (menu[2])
          Se(indiceTopico > 0)  entao
             Escreval ("Os Topicos Cadastrados São: ")
          //COND
             Enquanto (i >= 1) faca
                Escreval (i, "º Tópico ", topico[i])
                i <- i - 1
             FimEnquanto
             senao
                  Escreval ("Você Não tem Tópicos Cadastrados ")
          FimSe
    FimProcedimento
///////////////////////////////////////////////////////////////////////
    Procedimento case3()
       Var
          i: inteiro
       inicio
       Escreval (menu[3])
       Escreval("Você tem ",indiceTopico, " Cadastrados")
       Se (indiceTopico>=1) entao
          Escreva ("Qual Posição do Topíco desejado? ")
          Leia (i)
          Escreval (i, "º   Tópico   ", topico[i])
                   senao
                   Escreval ("Você não tem Topícos Cadastrados, Cadastre Topícos pelo MENU")
       FimSe
       return()
    FimProcedimento
///////////////////////////////////////////////////////////////////////
    Procedimento case4()
    Var
       i: inteiro
    inicio
       Escreval (menu[4])
       Escreval ("Você realmente deseja excluir todos topícos? ")
       Escreva ("Escreva 1 para SIM e 2 para NÃO ")
       Leia (i)
       escolha i
          Caso 1
               i <- indiceTopico
               Enquanto (i >= 1) faca
                        Escreval (i, "º Tópico ", topico[i], " Apagado")
                        topico[i] <- ""
                        i <- i - 1
               FimEnquanto
               indiceTopico <- 0
               return()
           Caso 2
                        menu()
                   OutroCaso
                        Escreval ("Valor Invalido")
                        return()
                FimEscolha
    FimProcedimento
///////////////////////////////////////////////////////////////////////
    Procedimento case5()
       Var
       v1: inteiro
       v2: inteiro
       inicio
          Escreval (menu[5])
          Se (indiceTopico>=1) entao
             Escreval ("Digite o Primeiro Topico que gostaria de Filtrar: " )
             Leia (v1)
             Escreval ("Digite o Ultimo Topico que gostaria de Filtrar: " )
             Leia (v2)
             Se (v1<v2) entao
                Enquanto (v1 <= v2) faca
                     Escreval (v1, "º Tópico ", topico[v1])
                     v1 <- v1 + 1
               FimEnquanto
               senao
                 Enquanto (v2 <= v1) faca
                     Escreval (v1, "º Tópico ", topico[v1])
                     v1 <- v1 - 1
                 FimEnquanto
             fimSe
            senao
              Escreval ("Você não tem Topícos Cadastrados, Cadastre Topícos pelo MENU")
          fimSe
       return()
    FimProcedimento
///////////////////////////////////////////////////////////////////////
    Procedimento case6()
       Var
       i: inteiro
       inicio
       Escreval (menu[6])
       Escreval ("Você Realmente deseja Sair? " )
       Escreva ("Escreva 1 para SIM e 2 para voltar ao MENU ")
       Leia (i)
       escolha i
          Caso 1
               Fimalgoritmo
           Caso 2
               menu()
           OutroCaso
               Escreval ("Valor Invalido")
               return()
       FimEscolha
    FimProcedimento
///////////////////////////////////////////////////////////////////////


   // Proposta

   apresentacao()
   menu()

Fimalgoritmo