#!/bin/bash

echo "===== CALCULADORA ====="

echo "Digite o primeiro numero:"
read n1

echo "Digite o segundo numero:"
read n2

echo "Escolha a operacao:"
echo "1 - Soma"
echo "2 - Subtracao"
echo "3 - Multiplicacao"
echo "4 - Divisao"

read op

case $op in
  1)
    resultado=$((n1 + n2))
    echo "Resultado: $resultado"
    ;;
  2)
    resultado=$((n1 - n2))
    echo "Resultado: $resultado"
    ;;
  3)
    resultado=$((n1 * n2))
    echo "Resultado: $resultado"
    ;;
  4)
    if [ "$n2" -eq 0 ]; then
      echo "Erro: nao e possivel dividir por zero."
    else
      resultado=$((n1 / n2))
      echo "Resultado: $resultado"
    fi
    ;;
  *)
    echo "Opcao invalida!"
    ;;
esac
