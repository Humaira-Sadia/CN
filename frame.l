%{

%}

%%

%%

int main(){
    printf("Enter the String: ");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}