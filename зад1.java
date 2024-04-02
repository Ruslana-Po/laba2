import java.util.Scanner;

public class Main {
    // Функция проверки на простоту
    public static int findPrime(int originalNumber) {
        // Проверка простоты
        for (int i = 2; i <= Math.sqrt(originalNumber); i++) {
            if (originalNumber % i == 0) {
                return 0;
            }
        }
        return 1;
    }

    // Функция для поиска ближайшего простого числа
    public static int nearestPrimeNumber(int originalNumber) {
        int leftward = originalNumber;
        int right = originalNumber + 1;
        // Проверка слева, справа или само число простое
        while (true) {
            if (findPrime(leftward) == 1) {
                return leftward;
            }
             else if (findPrime(right) == 1) {
                return right;
            }
            leftward --;
            right++;
        }
    }
    //механизм, с помощью которого можно передавать в Java-приложение данные прямо при его запуске
    public static void main(String[] args) {
        //можно использовать созданный объект scanner для чтения данных.
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите число больше или равное 0: ");
        //получить целое число методом
        int number = scanner.nextInt();

        while (number < 0) {
            System.out.print("Не верно введено значение, введите заново: ");
            number = scanner.nextInt();
        }

        int primeNumber;
        if (number == 0 || number == 1) {
            primeNumber = 2;
        }
         else {
            primeNumber = nearestPrimeNumber(number);
        }

        // Вывод
        System.out.println("Ближайшее простое число находится на расстоянии " + Math.abs(number - primeNumber) + " чисел");
    }
}
