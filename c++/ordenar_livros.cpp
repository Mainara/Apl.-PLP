#include <iostream>
#include <string>
#include <cstdio>
#include <vector>
#include <algorithm>
	
using namespace std;

int main(){
	
	int n;
	printf("Digite a quantidade de livros");
	cin >> n;
	vector<string> livros;
	string livro;
	for (int i = 0; i < n; i++){
		getline(cin, livro);
		livros.push_back(livro);
	}
	
	sort(livros.begin(), livros.end());
	
	for (int i = 0; i < livros.size(); i++) {
		cout << livros[i] << endl;
	}
	
}
