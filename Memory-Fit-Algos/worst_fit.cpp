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
	while(n--)
	{
		ct++;
		int mx=INT_MIN;
		int tind;
		int flg=0;
		printf("Enter memory alloted to process %d\n",ct);
		int mem;
		scanf("%d",&mem);
		for(int i=0;i<ind;i++)
		{
			if(a[i].second-a[i].first+1>mx)
			{
				mx=a[i].second-a[i].first+1;
				tind=i;
			}
		}

		if(a[tind].second-a[tind].first+1>=mem)
		{
			flg=1;
			for(int j=a[tind].first;j<a[tind].first+mem;j++) s[j]='1';
			a[tind].first+=mem;
		}
		if(flg==0) printf("Not Alloted\n");
	}
	printf("\nResultant memory list is :\n");
	printf("%s\n",s);
	printf("\nResultant free area sizes are :\n");
	for(int i=0;i<ind;i++) printf("%d ",a[i].second-a[i].first+1);  
	printf("\n\n");
}

