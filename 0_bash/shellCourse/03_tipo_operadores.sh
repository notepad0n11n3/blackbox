# !/bin/bash
#Programa para revisar los tipos de operadores
# Autor: panda8hat   PX89

numA=10
numB=4

echo "Operadores Aritm]eticos"
echo "Number: A=$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A x B =" $((numA * numB))
echo "Divididr A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))


echo -e "\nOperadores Relacionales" #con -e acepta caracteres especiales \n==<CR>
echo "N[umeros: A=$numA y B=$numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))


echo "Operadores de Asignaci[on"
echo "Number: A=$numA y B=$numB"
echo "Sumar A += B =" $((numA += numB))  # a + a + b === a += b
echo "Restar A -= B =" $((numA -= numB)) # a - a - b === a -= b
echo "Multiplicar A *=  B =" $((numA *= numB))
echo "Divisi[on A /= B =" $((numA /= numB))
echo "Residuo A %= B =" $((numA %= numB))
