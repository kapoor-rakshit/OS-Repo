#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
main()
{
	printf("Enter no. of processes\n");
	int n;
	int at[110];
	int st[110];
	int stemp[110];
double wtt[110];
	scanf("%d",&n);
printf("Enter Arrival time and service time\n");
	for(int i=0;i<n;i++)
{
scanf("%d%d",&at[i],&st[i]);
}
int s=0,w=0,x=0;
printf("\nWaiting Times are :\n");
for(int i=0;i<n;i++)
{
	if(i!=0)
w=(stemp[i-1]-at[i]);
	else
		w=at[i];
if(i!=0)
stemp[i]=stemp[i-1]+st[i];
else
	stemp[i]=st[i];
x=x+w;

printf("%d ",w);
}

printf("\nAverage Waiting Time is :\n");
printf("%lf\n",x/(double)n);

double ss=0;
printf("\nTurnaround Times are :\n");
for(int i=0;i<n;i++)
{
printf("%d ",stemp[i]-at[i]);
wtt[i]=(stemp[i]-at[i])/(double)st[i];
ss+=stemp[i]-at[i];
}

printf("\nAverage Turnaround Time is :\n");
printf("%lf\n",ss/(double)(n));

printf("\nWeighted Turnaround Times are :\n");
for(int i=0;i<n;i++)
{
printf("%lf ",wtt[i]);
}
}
