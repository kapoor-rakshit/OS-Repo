#include<bits/stdc++.h>
using namespace std;
int a[100];
bool chk[100];
main()
{
	int t;
	int ind=0;
	printf("\nEnter the page arrival sequence\n-1 to terminate the sequence\n\n");
	while(1)
	{
		scanf("%d",&t);
		if(t==-1) break;

		a[ind++]=t;
	}

	printf("\nEnter no. of frames\n");
	int n;
	scanf("%d",&n);
	printf("\n");
	int temp[n];
	for(int i=0;i<n;i++) temp[i]=-1;
	int tind=0;
	int ct=0;
	for(int i=0;i<ind;i++)
	{
		printf("%d       ",a[i]);
		if(chk[a[i]]==false) 
		{
			ct++;

			if(temp[tind]!=-1)
			chk[temp[tind]]=false;

			temp[tind]=a[i];
			chk[a[i]]=true;
			tind=(tind+1)%n;
		}
		for(int j=0;j<n;j++)if(temp[j]==-1) printf("* "); else printf("%d ",temp[j]);
		printf("\n");
	}
	printf("\nTotal page faults are : %d\n",ct);
}
