using System;

class MainClass {
    // Функция проверки на простоту
    public static int FindPrime(int originalNumber) {
        // Проверка простоты
        for (int i = 2; i <= Math.Sqrt(originalNumber); i++) {
            if (originalNumber % i == 0) {
                return 0;
            }
        }
        return 1;
    }

    // Функция для поиска ближайшего простого числа
    public static int NearestPrimeNumber(int originalNumber) {
        int leftward = originalNumber;
        int right = originalNumber + 1;
        // Проверка слева, справа или само число простое
        while (true) {
            if (FindPrime(leftward) == 1) {
                return leftward;
            }else if (FindPrime(right) == 1) {
                return right;
            }
            leftward --;
            right++;
        }
    }

    public static void Main() {
        Console.WriteLine("Введите число больше или равное 0: ");
        int number = Convert.ToInt32(Console.ReadLine());

        while (number < 0) {
            Console.WriteLine("Не верно введено значение, введите заново: ");
            number = Convert.ToInt32(Console.ReadLine());
        }

        int primeNumber;
        if (number == 0 || number == 1) {
            primeNumber = 2;
        }else {
            primeNumber = NearestPrimeNumber(number);
        }

        // Вывод
        Console.WriteLine("Ближайшее простое число находится на расстоянии " + Math.Abs(number - primeNumber) + " чисел");
    }
}
