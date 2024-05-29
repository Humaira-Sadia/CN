/*
*/

%{
%}

%%

^[+-]*?[0-9]+[.][0-9]+ printf("%s is a floating point number\n",yytext);

if|else|"else if" printf("%s is a keyword\n", yytext);

int|float|char|double|void printf("%s is a datatype\n",yytext);

^[+-]*?[0-9]+ printf("%s is an integer number\n",yytext);

[a-z]+ printf("%s is an identifier\n",yytext);

[+=*/-] printf("%s is an operator\n",yytext);

; printf("%s is an delimiter\n",yytext);

[,{}()] printf("%s is a separator\n",yytext);
%%

int yywrap(void)
{
	return 1;
}

int main()
{
  printf("Enter the Prog");
	yylex();
	return 0;
}