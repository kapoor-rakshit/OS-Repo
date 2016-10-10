#include<bits/stdc++.h>
using namespace std;
main()
{
	int n;
	int tar=0;
	printf("Enter no. of processes\n");
	scanf("%d",&n);
	printf("Enter Arrival time and Service time\n");
	int sm=0;
	int at[n+1],st[n+1],tst[n+1];
	for(int i=1;i<=n;i++)
	{
		scanf("%d%d",&at[i],&st[i]);
		sm+=st[i];
		tst[i]=st[i];
	}
	printf("Enter time slice(msec)\n");
	int ts;
	scanf("%d",&ts);

	int gtc[sm+1];

	int mn=INT_MAX;
	int ja;

	pair<int,int> tgtc[100];                          //temporary GANTT chart for keeping record in sorted

	for(int i=1;i<=sm;i+=ts)
	{
		mn=INT_MAX;	
		int ind=0;
		for(int j=1;j<=n;j++)
		{
			if(at[j]==i-1) ja=j;
			if(st[j]>0&&st[j]<=mn&&at[j]<=i-1)
			{
				tgtc[ind].second=j;
				tgtc[ind].first=st[j];
				ind++;
				mn=st[j];
			}
		}
		if(at[ja]==i-1&&st[ja]==mn)             //if process has just arrived with a tie , give preference
		{
			gtc[i]=ja;
			st[ja]--;
		}
		else
		{
			sort(tgtc,tgtc+ind);          //else process with smallest remaining time and that which appeared first
			gtc[i]=tgtc[0].second;
			st[tgtc[0].second]--;
		}
	}

	printf("\n\nGANTT chart has processes in order : \n");
	for(int i=1;i<=sm;i+=ts) printf("%d ",gtc[i]);

	int tchk[n];
	for(int i=0;i<n;i++) tchk[i]=false;

	double x=0;
	printf("\n\nWaiting times are :\n");
	for(int i=0;i<n;i++)
	{
		int tempwt=0;
		for(int j=1;j<=sm;j+=ts)
		{
			if(gtc[j]==i+1)
			{
				if(!tchk[gtc[j]-1])
				{
					tchk[gtc[j]-1]=true;
					tar=at[gtc[j]];
				}

				tempwt+=(j-1-tar);
				tar=j;
			}

		}
		printf("%d ",tempwt);
		x+=tempwt;
	}

	printf("\nAverage Waiting Time is :\n");
	printf("%lf\n",x/(double)n);

	double ss=0;
	double wtt[n+1];
	printf("\nTurnaround Times are :\n");
	for(int i=1;i<=n;i++)
	{
		for(int j=sm;j>=1;j-=ts)
		{
			if(gtc[j]==i)
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
	for(int i=1;i<=n;i++)
	{
		printf("%lf ",wtt[i]);
	}
	printf("\n");

}
