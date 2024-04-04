#include <iostream>
#include <Windows.h>
#include<vector>
using namespace std;
void re(vector<int> &number,int n) {
    //Переворачиваем числа
    for (int i = 0; i < n; i++) {
        int x = number[i];
        int result = 0;
        while (x != 0) {
            result = result * 10 + (x % 10);
            x = x / 10;
        }
        number[i] = result;
    }
}
int main()
{
    SetConsoleCP(1251);
    SetConsoleOutputCP(1251);
    cout << "Введите количество: ";
    int n;
    cin >> n;
    vector<int> number(n);
    cout << "Введите числа: ";
    //Ввод чисел в масиве
    for (int i = 0; i < n; i++) {
        int x;
        cin >> x;
        // Проверка
        if (cin.fail()) {
            cout << "Не верное значение";
            return 0;
        }
        number[i] = x;
    }
    re(number, n);
    //Вывод
    for (int i = 0; i < n; i++) {
        cout << number[i] << " ";
    }
}

