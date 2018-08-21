#include <stdio.h>
#include <iostream>
#include <string>	
using namespace std;

int main(){ 
	bool flag = true;
	int count = 0;
	while (count < 3){
		string palavra;
		cin >> palavra;
		flag = true;
		for (int i = 0; i <= palavra.length(); i++){
			if (palavra[i] == 'a' || palavra[i] == 'e' || palavra[i] == 'i' || palavra[i] == 'o' || palavra[i] == 'u'){
					flag = false;
			}
		}
		if (flag){
			cout << palavra << endl;
			count++;
		}
		}
		
		
	
	
	return 0;
}
