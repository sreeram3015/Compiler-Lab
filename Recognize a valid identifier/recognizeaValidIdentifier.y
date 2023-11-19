%{
    #include<stdio.h>
    int valid=1;
%}
%token digit letter
%%
start : letter s
s:  letter s
 | digit s
 |
 ;
%%

    int yyerror()
    {
      printf("\nIt's not an identifier!\n");
      valid=0;
      return 0;
    }
   
    int main()
     {
       printf("\nEnter a name to be tested for identifier:\t");
     yyparse();
     if(valid)
      {
      printf("\nIt is an identifier!\n");
      }
   }