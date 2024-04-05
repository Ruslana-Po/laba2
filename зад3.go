package main

import (
 "fmt"
)
func main() {
 var n int
 var number int
 fmt.Println("Введите кол-во: ")
 fmt.Scan(&n)
 // ввод
 for i := 0; i < n; i++ {
  fmt.Println("Введите число: ")
  fmt.Scan(&number)
  number=Re(number)
  fmt.Println(number)
 }
}
 
 // Функция для переворота
func Re(number int) int {
result := 0
    for number > 0 {
        result = result * 10 + (number % 10)
        number = number / 10
    }
return result
}
