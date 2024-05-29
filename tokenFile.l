%{
#include<stdio.h>
%}

%%

[0-9]*"."[0-9]+ fprintf(yyout, "%s is a Float\n", yytext);
[0-9] fprintf(yyout, "%s is a Integer\n", yytext);
do|while|for|int fprintf(yyout, "%s is a keyword\n", yytext);
if|else|"else if" fprintf(yyout, "%s is a Data Type\n", yytext);
[A-Za-z] fprintf(yyout, "%s is a Identifier\n", yytext);
[+-=><]*["=="|"++"] fprintf(yyout, "%s is a Operator\n", yytext);
[(){},] fprintf(yyout, "%s is a Seprator\n", yytext);
[;]= fprintf(yyout, "%s is a Terminator\n", yytext);

%%

int main(){
extern FILE *yyin, *yyout;
yyin = fopen("input.txt", "r");
yyout = fopen("output.txt", "w");
yylex();
return 0;
}

int yywrap(){
return 1;
}
