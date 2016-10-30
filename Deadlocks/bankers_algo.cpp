#include<bits/stdc++.h>
using namespace std;
int main()
{
	int nr;
	printf("\nEnter no. of resources : ");
	scanf("%d",&nr);

	int resource[nr];
	int available[nr];
	int np;
	for(int i=0;i<nr;i++) 
	{
		printf("\nEnter instances of resource %d : ",i+1);
		scanf("%d",&resource[i]);
		available[i]=resource[i];
	}
	printf("\nEnter no. of processes : ");
	scanf("%d",&np);

	int allocation[np][nr],maximum[np][nr],need[np][nr],work[nr];

	printf("\nEnter allocation matrix\n");
	for(int i=0;i<np;i++)
		for(int j=0;j<nr;j++)
			scanf("%d",&allocation[i][j]);

	printf("\nEnter maximum demand matrix\n");
	for(int i=0;i<np;i++)
		for(int j=0;j<nr;j++)
			scanf("%d",&maximum[i][j]);

	for(int i=0;i<nr;i++)
		for(int j=0;j<np;j++)
			available[i]-=allocation[j][i];

	printf("\nAvailable instances of resources are : ");
	for(int i=0;i<nr;i++) printf("%d ",available[i]);
	printf("\n");

	for(int i=0;i<np;i++)
		for(int j=0;j<nr;j++)
			need[i][j]=maximum[i][j]-allocation[i][j];

	printf("\nNeed matrix is");
	for(int i=0;i<np;i++)
	{
		cout<<endl;
		for(int j=0;j<nr;j++) printf("%d ",need[i][j]);
	}

	for(int i=0;i<nr;i++) work[i]=available[i];

	bool finish[np]={false};
	int ind=0;
	int ans[np];     
	int chk=0;
	while(1)                                                                  //Safety Algo
	{
		if(chk==np) break;
		for(int i=0;i<np;i++)
		{
			int flg=0;
			if(finish[i]==false)
			{
				for(int j=0;j<nr;j++)
				{
					if(need[i][j]>work[j]) {flg=1;break;}
				}
				if(flg==0) {
					finish[i]=true;
					for(int j=0;j<nr;j++) work[j]+=allocation[i][j];
					ans[ind++]=i+1;
				}
			}
		}
		chk++;
	}
	int flg=0;
	for(int i=0;i<np;i++) if(finish[i]==false) {flg=1;break;}

	if(flg==1) cout<<"\n\nSafe sequence might not be possible"<<endl;
	else 
	{
		cout<<"\n\nSafe sequence is : ";
		for(int i=0;i<ind;i++) cout<<ans[i]<<" ";
	}
	cout<<endl;    

	printf("\nEnter the process no. requested : ");                     	//Resource Request Algo
	int ep;
	scanf("%d",&ep);
	printf("\nEnter the instances of resources for process %d : ",ep);
	int eres[nr];
	int tp=0;
	for(int i=0;i<nr;i++) scanf("%d",&eres[i]);
	for(int i=0;i<nr;i++) if(eres[i]>need[ep-1][i]) {tp=1;break;}
	if(tp==1)
	{
		printf("\nProcess has exceeded maximum limit, can't be allocated !");
		return 0;
	}
	else
	{
		int tpp=0;
		for(int i=0;i<nr;i++) if(eres[i]>available[i]) {tpp=1;break;}
		if(tpp==1)
			printf("\nProcess needs to wait, till resources are available");
		else
		{
			for(int i=0;i<nr;i++)
			{
				allocation[ep-1][i]+=eres[i];
				available[i]-=eres[i];
				need[ep-1][i]-=eres[i];
			}

			printf("\n\nNew Allocation matrix is : ");
				for(int i=0;i<np;i++)
				{
					cout<<endl;
					for(int j=0;j<nr;j++)
						cout<<allocation[i][j]<<" ";
				}

			printf("\n\nNew available instances of resources are : ");
			for(int i=0;i<nr;i++) cout<<available[i]<<" ";

			printf("\n\nNew Need matrix is : ");
				for(int i=0;i<np;i++)
				{
					cout<<endl;
					for(int j=0;j<nr;j++)
						cout<<need[i][j]<<" ";
				}

		}
	}
}
