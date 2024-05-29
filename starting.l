%s A B C

%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN C;
<INITIAL>\n BEGIN INITIAL; printf("\n This String is Rejected");

<A>a BEGIN C;
<A>b BEGIN B;
<A>\n BEGIN INITIAL; printf("\n This String is Rejected");

<B>a BEGIN B;
<B>b BEGIN B;
<B>\n BEGIN INITIAL; printf("\n This String is Accepted");

<C>a BEGIN C;
<C>b BEGIN C;
<C>\n BEGIN INITIAL; printf("\n This String is Rejected");
%%

int main(){
    printf("Enter the String using {a, b} - ");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}
