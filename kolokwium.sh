#!usr/bin/bash
# zadnie 1 zakres 0-134 wyswietlone liczby parzyste podzielne przez 3 
for ((i=0;i<=134;i++)); do
if (($i%2==0 && $i%3==0)); then 
echo $i
fi
done 

# zadanie 4 korzystajac z petli while napisz kod ktory wyswietli liczby od 15 do 1 z pominieciem liczb 3 5 7 
declare i=16
while ((i>1)); do
((i--))
if (( $i==3 || $i==5 || $i==7 )); then
continue 
else 
echo $i
fi 
done 

# zadanie 7 suma wartoci minimalnej i maksymalnej wartoci tablicy
declare -a T=(5 2 34 9 1 4)
Len=${#T[@]}
Min=${T[i]}
Max=${T[i]}
for ((i=0;i<Len;i++)); do
if ((${T[i]} < $Min  )); then 
Min=${T[i]}
fi
for ((i=0;i<Len;i++)); do
if (( ${T[i]} > $Max )); then 
Max=${T[i]}
fi
suma=$(( $Max + $Min ))
done
done 
echo "Minimalna wartosc: $Min"
echo "Maksymalna wartosc: $Max"
echo "Suma minimalnej i maksymalnej wartoci: $suma"

# zadanie 8-sortowanie tablicy od najwiekszej do najmniejszej 
declare -a T=(9 4 23 7 1)
Len=${#T[@]}
for ((i=0;i<Len;i++)); do
for ((j=0;j<Len-i-1;j++)); do
if ((${T[j]} < ${T[j+1]} )); then 
bufor=${T[j]}
T[j]=${T[j+1]}
T[j+1]=$bufor
echo ${T[@]}
fi
done 
done 
echo "Posortowana tablica: ${T[@]}"

