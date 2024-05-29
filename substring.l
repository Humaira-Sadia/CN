%s P Q

%%
<INITIAL>a BEGIN P;
<INITIAL>b BEGIN INITIAL;
<INITIAL>\n BEGIN INITIAL; printf("This String is Rejected");

<P>a BEGIN P;
<P>b BEGIN Q;
<P>\n BEGIN INITIAL; printf("This String is Rejected");

<Q>a BEGIN Q;
<Q>b BEGIN Q;
<Q>\n BEGIN INITIAL; printf("This String is Accepted");

%%

int main(){
printf("Enter the String using {a, b} - ");
yylex();
return 0;}

int yywrap(){return 1;}
