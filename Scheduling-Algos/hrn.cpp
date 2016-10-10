#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<bits/stdc++.h>
using namespace std;
main()
{
		printf("Enter no. of processes\n");
		int n;
			scanf("%d",&n);
				printf("Enter Arrival time and Service time\n");
					int tar=0;
					int at[n];
					int st[n];
					int nat[n];
					int nst[n];
					int np[n];
				for(int i=0;i<n;i++)
				{
                                  scanf("%d%d",&at[i],&st[i]);
				}
bool chk[n];
int ind;
for(int i=0;i<n;i++) chk[i]=true;
for(int i=0;i<n;i++)
{
	int mx=INT_MIN;
	for(int j=0;j<n;j++)
	{
		
		if(chk[j])
		{
		if(at[j]<=tar)
		{
			double rr=((tar-at[j])+st[j])/double(st[j]);
			if(rr>mx)
			{
				mx=rr;
				ind=j;
			}
		
                        
		}
		}
	}
	nat[i]=at[ind];
	nst[i]=st[ind];
	chk[ind]=false;
	tar+=st[ind];
	np[i]=ind+1;
}
printf("\nGANTT Chart has processe's Arrival and Service times as follows :\n\n");
for(int i=0;i<n;i++) printf("%d ",np[i]);
printf("\n\n");
for(int i=0;i<n;i++) printf("%d ",nat[i]);
printf("\n");
for(int i=0;i<n;i++) printf("%d ",nst[i]);
printf("\n");
int stemp[100];
double wtt[100];
int s=0,w=0,x=0;
printf("\nWaiting Times are :\n");
for(int i=0;i<n;i++)
{
		if(i!=0)
			w=(stemp[i-1]-nat[i]);
			else
						w=nat[i];
			if(i!=0)
				stemp[i]=stemp[i-1]+nst[i];
			else
					stemp[i]=nst[i];
			x=x+w;

			printf("%d ",w);
}

printf("\nAverage Waiting Time is :\n");
printf("%lf\n",x/(double)n);

double ss=0;
printf("\nTurnaround Times are :\n");
for(int i=0;i<n;i++)
{
	printf("%d ",stemp[i]-nat[i]);
	wtt[i]=(stemp[i]-nat[i])/(double)nst[i];
	ss+=stemp[i]-nat[i];
}

printf("\nAverage Turnaround Time is :\n");
printf("%lf\n",ss/(double)(n));

printf("\nWeighted Turnaround Times are :\n");
for(int i=0;i<n;i++)
{
	printf("%lf ",wtt[i]);
}
printf("\n");
}
