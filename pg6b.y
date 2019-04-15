%{
#include<stdio.h>
#include<stdlib.h>
int id=0,dig=0,key=0,op=0;
%}
%token DIGIT ID KEY OP
%%

input: input DIGIT{dig++;}
|input ID {id++;}
|input KEY {key++;}
|input OP {op++;}
|DIGIT {dig++;}
|ID {id++;}
|KEY {key++;}
|OP {op++;}
;
%%
//extern FILE * yyin;
main(){
//FILE *fp;
//fp=fopen("in.c","r");
//if(!fp){
//printf("cannot openfile!\n");
//exit(0);
//}
//yyin=fp;
//do{
//yyparse();
//} while(!feof(yyin));
yyparse();

printf("numbers =%d \n keywords=%d\n identifiers=%d\n operator =%d\n",dig,key,id,op);
}

int yyerror()
{
printf("parse error!Message:");
exit(0);
}

