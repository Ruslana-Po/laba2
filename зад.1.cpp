#include <iostream>
#include <math.h>
#include <Windows.h>
using namespace std;

// ������� �������� �� ��������
int findPrime(int originalNumber) {
    //�������� ��������
    for (int i = 2; i <= sqrt(originalNumber); i++) {
        if (originalNumber % i == 0) {
            return 0;
        }
    }
    return 1;
}

//������� ��� ������ ���������� �������� �����
int nearestPrimeNumber(int originalNumber) {
    int leftward = originalNumber;
    int right = originalNumber + 1;
    //�������� ������, ����� ��� ���� ����� �������
    while (true) {
        if (findPrime(leftward)) {
            return leftward;
        }
        else if (findPrime(right)) {
            return right;
        }
        leftward--;
        right++;
    }
}

int main() {
    SetConsoleCP(1251);
    SetConsoleOutputCP(1251);
    // ���� �����
    cout << "������� ����� ������ ��� ������ 0: ";
    int number = 0;
    cin >> number;
    //�������� ������������ ����������������� �����
    while (cin.fail() || number < 0) {
        system("cls");
        cout << "�� ����� ������� ��������, ������� ������: ";
        //����������
        cin.clear();
        //���������� ������
        cin.ignore();
        cin >> number;
    }
    int primeNumber;
    if (number == 0 || number == 1) {
        primeNumber = 2;
    }
    else {
        primeNumber = nearestPrimeNumber(number);
    }
    //�����
    cout << "��������� ������� ����� ��������� �� ���������� " << abs(number - primeNumber) << " �����";
    return 0;
}