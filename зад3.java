import java.util.Scanner;
public class Main{
    
 public static int Re(int number) {
    int result = 0;
    //Переворачиваем
    while (number != 0) {
        result = result * 10 + (number % 10);
        //Деление без остатка
        number= number / 10;
    }
    return result;
 }
 
public static void main(String[] args) {
    //можно использовать созданный объект scanner для чтения данных.
    Scanner scanner = new Scanner(System.in);
    System.out.print("Введите количество: ");
    int n = scanner.nextInt();
    //Ввод чисел
    for (int i = 0; i < n; i++) {
         System.out.print("\nВведите число: ");
        int number = scanner.nextInt();
        //Преравниваем
        number=Re(number);
        System.out.print(number);
    }
   }
}

