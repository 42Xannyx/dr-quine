#include <stdio.h>
#include <stdlib.h>
int main(){int i=5;if(i>=0){
char str[128];sprintf(str,"Sully_%d.c",i);FILE*f=fopen(str,"w");
char*s="#include <stdio.h>%c#include <stdlib.h>%cint main(){int i=%d;if(i>=0){%cchar str[128];sprintf(str,%cSully_%%d.c%c,i);FILE*f=fopen(str,%cw%c);%cchar*s=%c%s%c;%cfprintf(f,s,10,10,i-1,10,34,34,34,34,10,34,s,34,10,10,34,34,10);fclose(f);%csprintf(str, %cgcc -Wall -Werror -Wextra Sully_%%d.c -o Sully_%%d && ./Sully_%%d%c,i,i,i); system(str);}}%c";
fprintf(f,s,10,10,i-1,10,34,34,34,34,10,34,s,34,10,10,34,34,10);fclose(f);
sprintf(str, "gcc -Wall -Werror -Wextra Sully_%d.c -o Sully_%d && ./Sully_%d",i,i,i); system(str);}}
