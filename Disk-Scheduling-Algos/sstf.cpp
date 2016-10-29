/*Find the minimum distance from the head, and move the head to that position*/

#include<bits/stdc++.h>
using namespace std;
int a[100];
main()
{
	printf("\nEnter the requested cylinders sequence\n-1 to terminate\n\n");
	int ind=0;
	int head;
	while(1)
	{
		int val;
		scanf("%d",&val);
		if(val==-1) break;
		a[ind++]=val;
	}
	printf("Enter starting position of head\n");
	scanf("%d",&head);
	pair<int,bool> chk[ind];
	for(int i=0;i<ind;i++)
	{
		chk[i].first=a[i];
		chk[i].second=false;
	}
	sort(chk,chk+ind);
	int tind;
	int s=0;
	for(int j=0;j<ind;j++)
	{
		int mn=INT_MAX;
		for(int i=0;i<ind;i++)
		{
			if(abs(head-chk[i].first)<mn&&chk[i].second==false)
			{
				mn=abs(head-chk[i].first);
				tind=i;
			}
		}
		chk[tind].second=true;
		s+=abs(head-chk[tind].first);
		head=chk[tind].first;
	}
	printf("Total cylinder movements are : %d\n",s);
}
