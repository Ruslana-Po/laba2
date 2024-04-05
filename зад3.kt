import java.util.Scanner 
fun Re(number: Int): Int { 
    var result=0
    var x = number
    while (x != 0) {
        result = result * 10 + (x % 10);
        //Деление без остатка
        x= x / 10;
    }
    return result;
} 
fun main() { 
   print("enter quantity: ") 
   val scanner = Scanner(System.`in`) 
   val n = scanner.nextInt()  
    for (i in 0..n-1) { 
        print("\nenter number: ")
        //val scanner = Scanner(System.`in`) 
        var number = scanner.nextInt()  
        number=Re(number)
        print(number)
    } 
   scanner.close(); 
}
