#include<stdio.h>
#include<conio.h>
 
void main(){
	int i,sum=0;
	int x[10];
	int h[10];
	int res[10][10];
	int k,min,max,l;
	int m,n;
	int n1,n2,j;
 
	clrscr();
	printf("Enter no of n1: \n");
	scanf("%d",&n1);
 
	printf("Enter no of n2: \n");
	scanf("%d",&n2);
 
	printf("Enter data for x:\n");
	for(i=0;i<=n1-1;i++){
     scanf("%d",&x[i]);
	}
 
	printf("Enter data for h:\n");
	for(i=0;i<=n2-1;i++){
     scanf("%d",&h[i]);
	}
 
	min=0;
	max=n1+n2-1;
 
	for(i=0;i<n1;i++){
    for(j=0;j<n2;j++){
   	 res[i][j]=x[i]*h[j];
    }
	}
 
	for(i=0;i<n1+n2-1;i++){
    m=i;
    n=0;
    sum=0;
    for(m=i,n=0;m>=0;m--,n++){
   	 sum=sum+res[m][n];
    }
    printf("%d ",sum);
	}
 
	getch();
}
