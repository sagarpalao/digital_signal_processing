#include<stdio.h>
#include<conio.h>

void main(){

	int x[10][10],h[10][10];
	int n,i,j,m,k,l,c,r;

	clrscr();

	printf("Enter no. of signals: ");
	scanf("%d",&n);

	printf("Enter sequence 1: ");
	for(i=0;i<n;i++){
		scanf("%d",&x[0][i]);
	}

	printf("Enter sequence 2: ");
	for(i=0;i<n;i++){
		scanf("%d",&h[i][0]);
	}

	for(i=1;i<=n-1;i++){
		c=i-1;
		for(k=0;k<n;k++){
			r = (k==0)?n-1:k-1;
			h[k][i]=h[r][c];
		}
	}

	printf("\n\n");
	for(i=0;i<n;i++){
		k=0;
		for(j=0;j<n;j++){
			k=k+x[0][j]*h[j][i];
		}
		printf("%d ",k);
	}
	getch();
}
