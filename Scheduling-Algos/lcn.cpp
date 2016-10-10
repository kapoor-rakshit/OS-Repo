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
	int chk[n+1];                                        //to check for the count of occurrence of process
	int gtc[sm+1];                                       //GANTT chart
	for(int i=1;i<=n;i++) chk[i]=0;

	int ind=1;
	int mn=INT_MAX;

	for(int i=1;i<=sm;i+=ts)
	{
		if(i-1==at[ind])                                  //if process encounters at time , give it preference
		{
			gtc[i]=ind;

			chk[ind]++;
			st[ind]--;
			ind++;
		}
		else
		{
			pair<int,int> tgtc[i];                  //a temporary GANTT chart to have values in sorted order

			for(int j=1;j<=i-1;j++)
			{
				tgtc[j].first=chk[gtc[j]];
				tgtc[j].second=gtc[j];
			}
			tgtc[0].first=100000;                               //any max value
			tgtc[0].second=100;
			sort(tgtc,tgtc+(i));
			int tind=0;
			while(1)
			{

				if(st[tgtc[tind].second]>0) 
				{
					gtc[i]=tgtc[tind].second;

					st[tgtc[tind].second]--;
					chk[tgtc[tind].second]++;

					break;
				}
				tind++;
			} 
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
		for(int j=sm;j>=1;j--)
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
