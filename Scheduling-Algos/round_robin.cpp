#include<bits/stdc++.h>
#include<unistd.h>
using namespace std;
main()
{
	queue<int> q;
	
	int n;
	printf("Enter no. of proceeses\n");
	scanf("%d",&n);
	printf("Enter Arrival and Service time of proceeses\n");
	int at[n],st[n],tst[n];
	int sm=0;
	for(int i=0;i<n;i++)
	{
		scanf("%d%d",&at[i],&st[i]);
		sm+=st[i];
		tst[i]=st[i];
	}
	printf("Enter time slice(msec)\n");
        int ts;
	scanf("%d",&ts);
	
	int ind=1;
	int gtc[100];
	q.push(1);
	printf("\nGANTT Chart has processes as follows : \n\n");
	for(int i=1;i<=sm;i+=ts)
	{
	   int prem_procs=q.front();
    
          gtc[i]=prem_procs;
	  q.pop();
	  st[prem_procs-1]--;
	   if(i==at[ind])
	   {
		   q.push(ind+1);
		   ind++;
		   
	   }
           if(st[prem_procs-1]>0)
	   {
              q.push(prem_procs);
	   }

	}
	double x=0;

	for(int i=1;i<=sm;i+=ts)
		printf("%d ",gtc[i]);
	int chk[n];
	int tar;
for(int i=0;i<n;i++) chk[i]=false;

	printf("\n\nWaiting times are :\n");
for(int i=0;i<n;i++)
{
	int tempwt=0;
for(int j=1;j<=sm;j++)
{
if(gtc[j]==i+1)
{
        if(!chk[gtc[j]-1])
	{
chk[gtc[j]-1]=true;
tar=at[gtc[j]-1];
	}

tempwt+=(j-1-tar);
tar=j;
}

}
printf("%d ",tempwt);
x+=tempwt;
}

double wtt[n];
	printf("\nAverage Waiting Time is :\n");
	printf("%lf\n",x/(double)n);

	double ss=0;
	printf("\nTurnaround Times are :\n");
	for(int i=0;i<n;i++)
	{
	for(int j=sm;j>=1;j--)
	{
		if(gtc[j]==i+1)
		{
			ss+=(j-at[i]);
			wtt[i]=(j-at[i])/double(tst[i]);
			printf("%d ",j-at[i]);
			break;
		}
	}	
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
