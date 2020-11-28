#includ<iostream>
using namespace std;

class nodetype
{
	int data;
	nodetype next;
	
}

class linklist
{
	nodetype *first, *last, *newnode;
	
	linklist()
	{
	
	first=NULL;
	last=NULL;
	
	}
	
	nodetype *build()
	{
	
		int num;
		cin>>num;
		while(num!=-99)
		{
		
			newnode=new nodetype;
			newnode -> info=num;
			newnode -> next=NULL;
			if(first==NULL)
			{
				first=newnode;
				last=newnode;
			}
			else
			{
				last->link=newnode;
				last=newnode;
				
			}
			cin>>num;
			return first;
			
	nodetype *middle()
	{
		len=getlen();
		int mid=len/2
		int val;
		int count;
		nodetype *current=first;
		while(current != NULL)
		{
			if(count==mid)
			{
				val=current->data;

				nodetype *current2=first;
				while(current2 != NULL)
				{	
					
					current2->data=val;
					val=val+2;
					current2=current2->next;
					
				}
				break;
				
			}
			
			current=current->next;
			count++;
		}
		
		return first;
		
	
	}
	
	int getlen()
	{	
		int count;
		nodetype *current=first;
		while(current != NULL)
		{
			current=current->next;
			count++;
		}
		return count;
	}


}
