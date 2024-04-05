func Re(number: Int) -> Int {
var result = 0;
var x = number;
//Переворачиваем
while x != 0 {
    result = result * 10 + (x % 10);
    //Деление без остатка
    x = Int(x / 10);
}
return result;
}

print("Введите количество: ")
var  n = Int(readLine()!)!

 //Ввод чисел
for i in 0...n-1 {
    print("Введите число: ");
    var  number = Int(readLine()!)!
    //Преравниваем
    number=Re(number: number);
   print(number);
}
