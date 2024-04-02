package main

import (
 "fmt"
 "math"
)

func main() {
 var number int
 fmt.Println("Введите число больше или равное 0: ")
 fmt.Scan(&number)
 // Проверка правильности пользовательского ввода
 for number <= 0 {
  fmt.Println("Не верно введено значение, введите заново: ")
  fmt.Scan(&number)
 }
 
 var primeNumber int
 if number == 1 {
  primeNumber = 2
 } else {
  primeNumber = nearestPrimeNumber(number)
 }

 // Вывод
 fmt.Println(math.Abs(float64(number - primeNumber)))
 }
 
 // Функция для поиска ближайшего простого числа
func nearestPrimeNumber(originalNumber int) int {
 leftward := originalNumber
 right := originalNumber + 1
 // Проверка справа, слева или само число простое
 for {
  if findPrime(leftward) == 1 {
   return leftward
  }else if findPrime(right) == 1 {
   return right
  }
  leftward --
  right++
 }
}


// Функция проверки на простоту
func findPrime(originalNumber int) int {
 // проверка простоты
 for i := 2; i <= int(math.Sqrt(float64(originalNumber))); i++ {
  if originalNumber%i == 0 {
    return 0
  }
 }
 return 1
 }
