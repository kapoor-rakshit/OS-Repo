/*Assume the head moves to maximum available size first, then reverse the direction to move to 0 and keeps on servicing the requests in the reverse direction ,not processed yet.
                                         0*****************************************190                                                      */

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
	s+=abs(head-mx);
	head=mx;
	for(int j=i-1;j>=0;j--)
	{
		s+=abs(head-a[j]);
		head=a[j];
	}

	printf("\nTotal cylinder movements are : %d\n",s);
}
