Compilação (assembly) do texto C:\Users\luize\OneDrive\Área de Trabalho\João Paulo\Versão final_d518d7124b007cb2564a4280cf57751f (2).pdf
Em 10/06/2025

   1                    ;---------------------------------------------------
   2                    ; Programa: Verificador de Par ou Ímpar
   3                    ; Autor: João Paulo 
   4                    ;---------------------------------------------------
   5                    ; Este programa verifica se um número é par ou ímpar
   6                    ; e armazena 0 para par, 1 para ímpar em RESULTADO.
   7                    ;---------------------------------------------------
   8                    
   9                            ORG 0
  10   00     20 14             LDA     NUM         ; Carrega o número
  11   02     10 15             STA     TEMP        ; Copia para TEMP para manipular
  12                    
  13   04     20 15     LOOP:   LDA     TEMP
  14   06     70 17             SUB     DOIS
  15   08     90 0E             JN      FIM         ; Se negativo, sai do loop
  16   0A     10 15             STA     TEMP        ; Armazena resultado da subtração
  17   0C     80 04             JMP     LOOP        ; Continua subtraindo
  18                    
  19   0E     20 15     FIM:    LDA     TEMP
  20   10     10 16             STA     RESULTADO   ; Salva resultado: 0 (par) ou 1 (ímpar)
  21                    
  22   12     F0                HLT                 ; Fim do programa
  23                    
  24                    ; --- Dados ---
  25                            ORG 20
  26   14     07        NUM:        DB 7            ; Número a ser verificado (mude para testar)
  27   15     00        TEMP:       DB 0
  28   16     00        RESULTADO:  DB 0
  29   17     02        DOIS:       DB 2

Listagem da tabela de símbolos

Símbolo         Linha   Endereço
DOIS               28   017
FIM                18   00E
LOOP               12   004
NUM                25   014
RESULTADO          27   016
TEMP               26   015
