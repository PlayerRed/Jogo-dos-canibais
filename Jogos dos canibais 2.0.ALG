Algoritmo "Jogo De Lógica"

// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/02/2022

Var

C: inteiro
J: inteiro
JB: inteiro
CB: inteiro
ladoA: Inteiro
ladoB: Inteiro
barco: inteiro
esq: caractere
dir: caractere

Inicio

C <- 3
J <- 3
ladoA <- C + J

repita
barco <- 0

 escreval("Quem deve embarcar para o lado B, J ou C:")
  Leia(esq, dir)

   escolha(esq)
    caso "J"
     escreval("Jesuita embarcou")
      escreval ("-------------")
       J <- J - 1
        JB <- JB + 1
         barco <- barco + 1

    caso "C"
     escreval("Canibal embarcou")
      escreval ("-------------")
       C <- C - 1
        CB <- CB + 1
         barco <- barco + 1

fimescolha

  escolha(dir)
   caso "J"
    escreval("Jesuita embarcou")
     escreval ("-------------")
     J <- J - 1
      JB <- JB + 1
       barco <- barco + 1

 caso "C"
  escreval("Canibal embarcou")
   escreval ("-------------")
    C <- C - 1
     CB <- CB + 1
      barco <- barco + 1

fimescolha

 se (barco = 2) entao
   ladoB <- (ladoB + 2)
    barco <- 0
     escreval ("Barco movido")
      escreval ("-------------")
 senao
  escreval("-E necessário 2 passagueiros no embarque-")
   fimalgoritmo
 fimse

 se ladoB = 6  entao
  escreval ("Parabéns você venceu.")
   Fimalgoritmo
 fimse
se (C > J) e (J <> 0) entao
  escreval("Jesuitas lado A mortos")
   fimalgoritmo
 fimse

  se (CB > JB) e (JB <> 0) entao
  escreval("Jesuitas lado B mortos")
   fimalgoritmo
 fimse

 se (J < 0) entao
     escreval ("Movimento Invalido")
   fimalgoritmo
 fimse

 se (C < 0) entao
     escreval("Movimento invalido")
   fimalgoritmo
   fimse

 se (JB < 0) entao
     escreval ("Movimento Invalido")
   fimalgoritmo
 fimse

 se (CB < 0) entao
     escreval("Movimento invalido")
   fimalgoritmo
 fimse

 escreva ("Quem deve embarcar para o lado A, J ou C:")
  Leia(esq, dir)

   escolha(esq)
    caso "J"
     se (JB = 0) entao
      escreval("Movimento invalido")
       fimalgoritmo
        fimse
         escreval("Jesuita embarcou")
          escreval ("-------------")
           ladoB <- ladoB - 1
            barco <- barco + 1
             JB <- JB - 1
              J <- J + 1

   caso "C"
    escreval("Canibal embarcou")
     Se (CB = 0) entao
      escreval("Movimento invalido")
       fimalgoritmo
        fimse
         escreval ("-------------")
          ladoB <- ladoB - 1
           barco <- barco + 1
            CB <- CB - 1
             C <- C + 1
   fimescolha

   escolha(dir)
    caso "J"
     se (JB = 0) entao
      escreval("Movimento invalido")
       fimalgoritmo
        fimse
         escreval("Jesuita embarcou")
          escreval ("-------------")
           ladoB <- ladoB - 1
            barco <- barco + 1
             JB <- JB - 1
              J <- J + 1

   caso "C"
    Se (CB = 0) entao
     escreval("Movimento invalido")
      fimalgoritmo
       fimse
        escreval("Canibal embarcou")
         escreval ("-------------")
          ladoB <- ladoB - 1
           barco <- barco + 1
            CB <- CB - 1
             C <- C + 1
   fimescolha
ate ladoB = 6
escreval("Parabéns você venceu.")
Fimalgoritmo