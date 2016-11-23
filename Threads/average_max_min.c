/*A C program to calculate the average ,maximum, minimum value of the values entered.
  To compile use ' gcc -pthread -o yourfilename yourfilename.c '
  To run use ' ./yourfilename value value value value ..........'
*/

#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<pthread.h>
int n;
double avg;
int mx;
int mn;
int b[100];
void *average_func();
void *max_func();
void *min_func();
int main(int argc,char *argv[])
{
n=argc;

for(int i=1;i<=argc-1;i++) b[i]=atoi(argv[i]);

pthread_t tid[3];

pthread_create(&tid[0], NULL, average_func, NULL);
pthread_create(&tid[1], NULL, max_func, NULL);
pthread_create(&tid[2], NULL, min_func, NULL);

for(int i=0;i<3;i++)
pthread_join(tid[i], NULL);

printf("Average is : %lf\n",avg);
printf("Maximum value is : %d\n",mx);
printf("Minimum value is : %d\n",mn);

return 0;
}
void *average_func()
{

double s=0;
for(int i=1;i<=n-1;i++) s+=(b[i]);
avg=s/(n-1);

pthread_exit(0);
}
void *max_func()
{
mx=b[1];
for(int i=1;i<=n-1;i++) 
if(b[i]>mx)
mx=b[i];

pthread_exit(0);
}
void *min_func()
{
mn=b[1];
for(int i=1;i<=n-1;i++) 
if(b[i]<mn)
mn=b[i];

pthread_exit(0);
}
