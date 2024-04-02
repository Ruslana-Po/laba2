import Foundation

// Функция проверки на простоту
func findPrime(originalNumber: Int) -> Int {
    // проверка простоты
    for i in 2...Int(sqrt(Double(originalNumber))) {
        if originalNumber % i == 0 {
            return 0
        }
    }
    return 1
}

// Функция для поиска ближайшего простого числа
func nearestPrimeNumber(originalNumber: Int) -> Int {
    var leftward = originalNumber
    var rightn = originalNumber + 1
    // Проверка справа, слева или само число простое
    while true {
        if findPrime(originalNumber: leftward) == 1 {
            return leftward
        }else if findPrime(originalNumber: rightn) == 1 {
            return rightn
        }
        leftward -= 1
        rightn += 1
    }

}
// Ввод
print("Введите число больше или равное 0: ")
var  number = Int(readLine()!)!
while number < 0 {
    print("Не верно введено значение, введите заново : ")
    number = Int(readLine()!)!
}
var primeNumber: Int
if number == 0 || number == 1 {
    primeNumber = 2
}else {
    primeNumber = nearestPrimeNumber(originalNumber: number)
}
// Вывод
print(abs(number - primeNumber))
