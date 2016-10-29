/*The head moves to requests, in order of their arrival.
                                         0*****************************************190                                    */

#include<stdio.h>
#include<math.h>
#include<unistd.h>
#include<stdlib.h>
int a[100];
int main()
{
	printf("\nEnter the requested cylinders sequence\n-1 to terminate\n\n");
	int ind=0;
	while(1)
	{
		int val;
		scanf("%d",&val);
		if(val==-1) break;
		a[ind++]=val;
	}
	printf("Enter starting position of head\n");;
	int head;
	scanf("%d",&head);
	int s=0;
	for(int i=0;i<ind;i++)
	{
		s+=abs(head-a[i]);
		head=a[i];
	}
	printf("\nTotal cylinder movements are : %d\n",s);
	return 0;
}
