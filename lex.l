%{
/* definición global */
%}
/*definición de componentes*/
Digito      [0-9]
Op-sum      ["+"]
Op-menos    ["-"]
Op-mul      ["*"]
Op-div      ["/"]

Op-or       ["or"]
Op-not      ["not"]
Op-xor      ["xor"]
Op-and      ["and"]

Par-a       ["("]
Par-c       [")"]

%%
 
 
{Op-sum}    {printf("\nOp-sum (%s)",yytext)}
{Op-menos}    {printf("\nOp-menos (%s)",yytext)}
{Op-mul}    {printf("\nOp-mul (%s)",yytext)}
{Op-div}    {printf("\nOp-div (%s)",yytext)}
{Op-or}    {printf("\nOp-or (%s)",yytext)}
{Op-not}    {printf("\nOp-not (%s)",yytext)}
{Op-xor}    {printf("\nOp-xor (%s)",yytext)}
{Op-and}    {printf("\nOp-and (%s)",yytext)}
{Par-a}    {printf("\nPar-a (%s)",yytext)}
{Par-c}    {printf("\nPar-c (%s)",yytext)}

 { fprintf(stderr, "Error léxico: símbolo no reconocido\n"); }


%%
/* código adicional */

















