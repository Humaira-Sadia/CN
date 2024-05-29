%{
    int i=0, f=0;
%}

%%
^[+-]?*[0-9]*[.][0-9]+$ {f++;}
^[+-]?*[0-9]+$ {i++;}
%%

int main(){
    printf("Enter the String : ");
    yylex();

    printf("Number of Integers value : %d\n", i);
    printf("Number of Float value : %d\n", f);
    return 0;
}

int yywrap(){
    return 1;
}