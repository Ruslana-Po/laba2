import kotlin.math.sqrt 
import java.util.Scanner 
fun findPrime(originalNumber: Int): Int { 
    for (i in 2..sqrt(originalNumber.toDouble()).toInt()) { 
        if (originalNumber % i == 0) { 
            return 0 
        } 
    } 
    return 1 
} 
 

fun nearestPrimeNumber(originalNumber: Int): Int { 
    var leftward = originalNumber 
    var right = originalNumber + 1 
    while (true) { 
        if (findPrime(leftward) == 1) { 
            return leftward 
        } else if (findPrime(right) == 1) { 
            return right 
        } 
        leftward-- 
        right++ 
    } 
} 
 
fun main() { 
   print("enter a value equal to or greater than 0: ") 
   val scanner = Scanner(System.`in`) 
   val number = scanner.nextInt()  
   scanner.close(); 
    val primeNumber: Int
    if (number < 0){
        print("Error") 
    } else{
        if (number == 0 || number == 1) { 
            primeNumber = 2 
        } else { 
            primeNumber = nearestPrimeNumber(number) 
        } 
        print(Math.abs(number - primeNumber))
    }
}
