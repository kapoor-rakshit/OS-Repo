/*Assume the head moves to maximum request first, then reverse the direction to move to least request. from here again the
 head moves to request not processed yet
                                           0****************************************190                      */

#include<bits/stdc++.h>
using namespace std;
int a[100];
main()
{
	printf("\nEnter requested cylinders sequence\n-1 to treminate\n\n");
	int ind=0;
	while(1)
	{
		int val;
		scanf("%d",&val);
		if(val==-1) break;
		a[ind++]=val;
	}
	sort(a,a+ind);
	int mx=a[ind-1]+(10-a[ind-1]%10);
	printf("\nEnter starting position of head\n");
	int head;
	scanf("%d",&head);
	int i;
	for(i=0;i<ind;i++)
	{
		if(a[i]>=head) break;
	}
	int s=0;
	for(int j=i;j<ind;j++)
	{
		s+=abs(head-a[j]);
		head=a[j];
	}
	s+=abs(head-a[0]);
	head=a[0];
	for(int j=1;j<i;j++)
	{
		s+=abs(head-a[j]);
		head=a[j];
	}

	printf("\nTotal cylinder movements are : %d\n",s);

}

