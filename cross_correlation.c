#include<stdio.h>
#include<conio.h>

int main(){
    int n,i,sum=0;
    int x[10];
    int k,min,max,l;

    clrscr();
    printf("Enter no of discrete values in signal: \n");
    scanf("%d",&k);

    printf("Enter data for auto correlation:\n");
    for(i=0;i<=k-1;i++){
   	 scanf("%d",&x[i]);
    }

    min=0-(k-1);
    max=k-1;

    for(l=min;l<=max;l++){
   	 sum=0;
   	 for(n=0;n<=(k-1);n++){	 
   		 if(n-l<0){
   			 sum=sum+(x[n]*0);		 
   		 }
   		 else if(n-l>k-1){
   			 sum=sum+(x[n]*0);		 
   		 }
   		 else{
   			 sum=sum+(x[n]*x[n-l]);		 
   		 }
   	 }
   	 printf("%d ",sum);
    }
    getch();
}
