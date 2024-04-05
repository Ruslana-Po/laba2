using System;

class MainClass {
    
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
  static void Main() {
    Console.WriteLine("Введите количество: ");
    int n = Convert.ToInt32(Console.ReadLine());
    //Ввод чисел
    for (int i = 0; i < n; i++) {
        Console.WriteLine("Введите число: ");
        int number = Convert.ToInt32(Console.ReadLine());
        //Преравниваем
        number=Re(number);
        Console.WriteLine(number);
    }
  }
}
