%{
#include <stdio.h>

int s = 0, c = 0;
%}

%%
[A-Z]+[^a-z] {c++;}
[a-z]+[^A-Z]$ {s++;}
%%

int main() {
    printf("Enter the String : ");
    yylex();
    printf("Capital Letter Word : %d\n", c);
    printf("Small Letter Word : %d\n", s);
    return 0;
}

int yywrap() {
    return 1;
}
