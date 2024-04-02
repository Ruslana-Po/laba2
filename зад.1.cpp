#include <iostream>
#include <math.h>
#include <Windows.h>
using namespace std;

// Функция проверки на простоту
int findPrime(int originalNumber) {
    //проверка простоты
    for (int i = 2; i <= sqrt(originalNumber); i++) {
        if (originalNumber % i == 0) {
            return 0;
        }
    }
    return 1;
}

//Функция для поиска ближайшего простого числа
int nearestPrimeNumber(int originalNumber) {
    int leftward =originalNumber;
    int right = originalNumber + 1;
    //Проверка справа, слева или само число простое
    while (true) {
        if (findPrime(leftward)) {
            return leftward;
        }else if (findPrime(right)) {
            return right;
        }
        leftward--;
        right++;
    }
}

int main() {
SetConsoleCP(1251);
SetConsoleOutputCP(1251);
// Ввод числа
cout << "Введите число больше или равное 0: ";
int number = 0;
    cin >> number;
    //Проверка правильности пользовательского ввода
    while(cin.fail() || number < 0){
        cout << "Не верно введено значение, введите заново: ";
        //обнуленние
        cin.clear();
        //игнорирует символ
        cin.ignore();
        cin >> number;
    }
    int primeNumber;
    if (number == 0|| number == 1) {
        primeNumber = 2;
    }else{
        primeNumber = nearestPrimeNumber(number);
    }
    //Вывод
    cout << "Ближайшее простое число находится на расстоянии " << abs(number - primeNumber) << " чисел";
return 0;
}