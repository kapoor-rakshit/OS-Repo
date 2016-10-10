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
	int tind=0;
	while(n--)
	{
		ct++;
		int chkc=0;
		printf("Enter memory alloted to process %d\n",ct);
		int mem;
		scanf("%d",&mem);
		for(int i=tind%ind;chkc<ind;i=(i+1)%ind,chkc++) 
		{
			if(a[i].second-a[i].first+1>=mem)
			{ 
				for(int j=a[i].first;j<a[i].first+mem;j++) s[j]='1';
				a[i].first+=mem;
				tind=i+1;
				break;
			}
		}

	}
	printf("\nResultant memory list is :\n");
	printf("%s\n",s);
	printf("\nResultant free area sizes are :\n");
	for(int i=0;i<ind;i++) printf("%d ",a[i].second-a[i].first+1); 
	printf("\n\n");
}
