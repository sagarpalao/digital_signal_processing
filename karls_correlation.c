#include<stdio.h>
#include<conio.h>
#include<math.h>
void main(){
int x[20];
int y[20];
int n,i;
double a,b,sumx=0,sumy=0,sumxy=0,sumx2=0,sumy2=0;
double r;
clrscr();
printf("Enter number of elements: ");
scanf("%d",&n);
printf("Enter elements for x: ");
for(i=0;i<n;i++){
	scanf("%d",&x[i]);
	sumx=sumx+x[i];
	sumx2=sumx2+(x[i]*x[i]);
}
printf("Enter elements for y: ");
for(i=0;i<n;i++){
	scanf("%d",&y[i]);
	sumy=sumy+y[i];
	sumy2=sumy2+(y[i]*y[i]);
	sumxy=sumxy+(x[i]*y[i]);
}
r=(n*sumxy-sumx*sumy)/(sqrt(n*sumx2-sumx*sumx)*sqrt(n*sumy2-sumy*sumy));
printf("Karls Corelation: %lf",r);
getch();
}
