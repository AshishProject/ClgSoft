#include<stdio.h>
#include<conio.h>
#include<time.h>
#inclide<stdlib.h>

void Quicksort(int[],int,int);
int partitioning(int[],int,int);

int main()
{
	
	int a[3500],i,j;
	long int n=500;
	clock tstart,end;
	clrscr();
	while(n<=3500)
	{
		for(i=0;i<n;i++)
		{
			a[i]=rand();
		}
		start=clock();
		for(j=0;j<100;j++)
		{
			Quicksort(a,0,n-1);
		}
		end=clock();
	printf("\m\n the time taken for n=%lu is %f\n",n,(end-start)/CLK_TCK);
	n=n+500;
	}
	getch();
}

void Quicksort(int a[],int p,int q)
{
	if(p<r)
	int q;
	{
		q=partition(a,p,r);
		Quicksort(a,p,q-1);
		Quicksort(a,q+1,,r);
	}
}

int partitioning(int a[],int p,int r)
{
	int i,j,key,temp;
	i=p-1;
	
	for(j=p;j<(r-i);j++)
	{
		if (a[j]<=q)
		{
			i++;
			a[temp]=a[i];
			a[i]=a[j];
			a[j]=a[temp];
			
		}
	
		a[temp]=a[i+1];
			a[i+1]=a[r];
			a[r]=a[temp];
			return(i+1);
	}
	
}
