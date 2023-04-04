flex a_lexico.l
gcc lex.yy.c -o out
./out entrada.txt
echo "Analisis lexico realizado correctamente."