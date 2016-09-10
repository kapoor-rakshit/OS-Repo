#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<bits/stdc++.h>
using namespace std;
pair<int,int> a[100];
main()
{
	int n;
	int tar=0;
	printf("Enter no. of processes\n");
	scanf("%d",&n);
	printf("Enter Arrival time and Service time\n");
	
	for(int i=0;i<n;i++)
	{
scanf("%d%d",&a[i].second,&a[i].first);
	}
	sort(a,a+n);
	bool chk[n];
	int at[n];
	int st[n];
	for(int i=0;i<n;i++) chk[i]=true;
	
for(int i=0;i<n;i++)
{
	for(int j=0;j<n;j++)
	{
		if(chk[j]){
if(a[j].second<=tar)
{
chk[j]=false;
tar+=a[j].first;
at[i]=a[j].second;
st[i]=a[j].first;
break;
}
	}
}

	
}
printf("\nGANT Chart has processes Arrival and Service as follows :\n");
for(int i=0;i<n;i++)
{
	printf("%d ",at[i]);
}
printf("\n");
for(int i=0;i<n;i++)
{
	printf("%d ",st[i]);
}
int stemp[100];
double wtt[100];
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
