%option noyywrap

%{
#include <stdio.h>
#include <stdlib.h>
int num_count = 0;
%}


%%

[ \t]                    ; /* ignorar espacios y tabuladores */
[\r\n]                   ; /* ignorar saltos de línea */
not                      { printf("op-not = %s\n", yytext); }
and                      { printf("op-and = %s\n", yytext); }
or                       { printf("op-or = %s\n", yytext); }
"("                      { printf("par-a = %s\n", yytext); }
")"                      { printf("par-c = %s\n", yytext); }
[0-1]+                   { printf("num%d = %s\n", ++num_count, yytext); }
"+"                      { printf("op-sum = %s\n", yytext); }
"*"                      { printf("op-mul = %s\n", yytext); }
"-"                      { printf("op-menos = %s\n", yytext); }
xor                      { printf("op-xor = %s\n", yytext); }
"\/"			 { printf("op-div = %s\n", yytext); }
.                        { printf("ERROR Léxico!!\n"); }
[0-9]+			 { printf("ERROR Léxico!!\n"); }

%%

int main() {
    freopen("entrada.txt", "r", stdin);
    freopen("salida.txt", "w", stdout);

    yylex();

    return 0;
}