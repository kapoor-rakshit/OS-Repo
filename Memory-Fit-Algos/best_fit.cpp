#include<bits/stdc++.h>
using namespace std;
pair<int,int> a[100];
char s[100];
main()
{
	printf("\nEnter the memory list\n0 for free space\n1 for occupied\n\n");
	scanf("%s",s);
	int l=strlen(s);
	int ind=0;
	for(int i=0;i<l;i++)
	{
		if(s[i]=='0')
		{
			a[ind].first=i;

			while(s[i]=='0'&&i<l)                                     //   
			{                                                         //Keeps record of free areas
				i++;                                              //
				a[ind].second=i-1;                  

			}
			ind++;
		}
	}
	printf("\nNo. of free areas with their size are : \n");
	printf("%d\n",ind);                                                     //No. of free areas
	for(int i=0;i<ind;i++) printf("%d ",a[i].second-a[i].first+1);        //Start and end of free areas 
	int n;
	printf("\nEnter no. of processes\n");
	scanf("%d",&n);
	int ct=0;
	int tind;
	while(n--)
	{
		ct++;
		int mn=INT_MAX;
		printf("Enter memory alloted to process %d\n",ct);
		int mem;
		scanf("%d",&mem);
		for(int i=0;i<ind;i++)
		{
			if(a[i].second-a[i].first+1-mem<mn&&a[i].second-a[i].first+1-mem>=0)
			{
				mn=a[i].second-a[i].first+1-mem;                   //Get the free area with minimum wastage
				tind=i;                                            //
			}
		}
		if(mn!=INT_MAX)
		{
			for(int j=a[tind].first;j<a[tind].first+mem;j++) s[j]='1';
			a[tind].first+=mem;
		}
	}
	printf("\nResultant memory list is :\n");
	printf("%s\n",s);
	printf("Resultant size of free areas are :\n");
	for(int i=0;i<ind;i++) printf("%d ",a[i].second-a[i].first+1); 
	printf("\n\n");
}
