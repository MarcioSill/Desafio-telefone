Algoritmo "desafio_Telefone"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Nelio Alves
// Descrição   : Fazer a leitura dos dados de um conjunto de clientes
//de uma companhia telefônica
// Autor(a)    : Marcio da Silva
// Data atual  : 20/10/2022
Var
   N,i, j:inteiro
   soma: real

   vetName: vetor[0..9] de caracter
   vetTelefone: vetor[0..9] de caracter
   vetTipo: vetor[0..9] de inteiro
   vetMinutos: vetor[0..9] de inteiro
   ValorDaConta: vetor[0..9] de real

   vetAssinatura: vetor[0..2,0..1] de real



Inicio
   VetAssinatura[0,0] <- 25.5
   VetAssinatura[0,1] <- 0.10
   VetAssinatura[1,0] <- 35.0
   VetAssinatura[1,1] <- 0.12
   VetAssinatura[2,0] <- 60.0
   VetAssinatura[2,1] <- 0.15

   soma <- 0

   escreva("Informe a quantidade de clientes: ")
   leia(N)

   para i de 0 ate N-1 faca
      escreval("Dados do ",i+1,"o. cliente:")
      escreva("Nome: ")
      leia(vetName[i])
      escreva("Telefone: ")
      leia(vetTelefone[i])
      escreva("Tipo: ")
      leia(vetTipo[i])
      escreva("Minutos: ")
      leia(vetMinutos[i])
      escreval()
   fimpara


   escreval()

   escreval("Informe o preco basico e excedente de cada tipo de conta:")
   para i de 0 ate 3-1 faca
      escreval("Tipo",i,":")
      para j de 0 ate 2-1 faca
         se(j = 0) entao
            escreval(VetAssinatura[i,j]:2:1)
         senao
            escreval(VetAssinatura[i,j]:2:2)
         fimse
      fimpara
   fimpara

   para i de 0 ate N-1 faca
      ValorDaConta[i] <- 0
      se (vetMinutos[i] > 90) entao
         soma <- (vetMinutos[i]-90)* VetAssinatura[vetTipo[i],1]
         ValorDaConta[i] <- soma + VetAssinatura[vetTipo[i],0]
      senao
         ValorDaConta[i] <- VetAssinatura[vetTipo[i],0]
      fimse
   fimpara

   escreval()

   escreval("RELATÓRIO DE CLIENTES:")

   escreval()

   para i de 0 ate N-1 faca
      escreva(vetName[i],", ",vetTelefone[i],", Tipo",vetTipo[i])
      escreval(", Minutos:",vetMinutos[i],", Conta = R$ ",ValorDaConta[i]:5:2)
   fimpara



Fimalgoritmo