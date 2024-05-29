%{
int c=0, s=0;
%}

%%
[A-Z] {c++;}
[a-z] {s++;}
.;
%%

int main(){
    printf("Enter the String : ");
    yylex();
    printf("Capital Letters : %d\n", c);
    printf("Small Letters : %d\n", s);
    return 0;
}

int yywrap(){
    return 1;
}