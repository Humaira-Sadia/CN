%{
#include <stdio.h>
int v = 0, c = 0;
%}

%%
[AEIOUaeiou] { v++; }
[A-Za-z] { c++; }
[^A-Za-z]
%%

int main() {
    printf("Enter the String :- ");
    yylex();
    printf("Number of vowels : %d\n", v);
    printf("Number of consonants : %d\n", c);
    return 0;
}

int yywrap() {
    return 1;
}
