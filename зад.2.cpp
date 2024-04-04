#include <iostream>
#include <vector>
#include <string>
#include <Windows.h>

using namespace std;

int main() {
	SetConsoleCP(1251);
	SetConsoleOutputCP(1251);
	string rings = "";
	cout << "Введите строку: " ;
	cin >> rings;
	//Проверка
	for (int i = 0; i < size(rings); i += 2) {
		if (rings[i] == 'R' || rings[i] == 'W' || rings[i] == 'B') {
			if (rings[i + 1] < '0' || rings[i + 1]>'9') {
				cout << "Значение было введено неверно";
				return 0;
			}
		}else {
			cout << "Значение было введено неверно";
			return 0;
		}
	}
	
	vector <int> sticks(10, 1);
	//Считаем кол-во колец на каждом стержне
	for (int i = 0; i < size(rings); i += 2) {
	
		if (rings[i] == 'R') {
			sticks[rings[i + 1] - '0'] *= 2;
		}
		if (rings[i] == 'W') {
			sticks[rings[i + 1] - '0'] *= 3;
		}
		if (rings[i] == 'B') {
			sticks[rings[i + 1] - '0'] *= 5;
		}
	}
	int counter = 0;
	//На скольких кольцах стержни одного цвета
	for (int i : sticks) {
		if (i % 30 == 0) {
			counter++;
		}
	}
	cout<< counter;
}
