#include <iostream>
#include <math.h>
#include <Windows.h>
using namespace std;

// �㭪�� �஢�ન �� ������
int findPrime(int originalNumber) {
    //�஢�ઠ ������
    for (int i = 2; i <= sqrt(originalNumber); i++) {
        if (originalNumber % i == 0) {
            return 0;
        }
    }
    return 1;
}

//�㭪�� ��� ���᪠ ������襣� ���⮣� �᫠
int nearestPrimeNumber(int originalNumber) {
    int leftward =originalNumber;
    int right = originalNumber + 1;
    //�஢�ઠ �ࠢ�, ᫥�� ��� ᠬ� �᫮ ���⮥
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
// ���� �᫠
cout << "������ �᫮ ����� ��� ࠢ��� 0: ";
int number = 0;
    cin >> number;
    //�஢�ઠ �ࠢ��쭮�� ���짮��⥫�᪮�� �����
    while(cin.fail() || number < 0){
        cout << "�� ��୮ ������� ���祭��, ������ ������: ";
        //���㫥����
        cin.clear();
        //�������� ᨬ���
        cin.ignore();
        cin >> number;
    }
    int primeNumber;
    if (number == 0|| number == 1) {
        primeNumber = 2;
    }else{
        primeNumber = nearestPrimeNumber(number);
    }
    //�뢮�
    cout << "������襥 ���⮥ �᫮ ��室���� �� ����ﭨ� " << abs(number - primeNumber) << " �ᥫ";
return 0;
}