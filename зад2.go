package main

import (
 "fmt"
)
func main()  {
    fmt.Println("Введите строку:  ")
    var rings string
    fmt.Scan(&rings)
	//Проверка
	for i := 0; i < len(rings) ; i += 2 {
		if rings[i]=='R' || rings[i]=='B' || rings[i]=='W' {
			if rings[i + 1] < '0' || rings[i + 1]>'9' {
				fmt.Println("Значение было введено неверно")
			}
		}else {
			fmt.Println("Значение было введено неверно")
		}
	}
var sticks [10]int = [10]int{1, 1, 1, 1, 1, 1, 1, 1, 1, 1}	
	//Считаем кол-во колец на каждом стержне
for i := 0; i < len(rings) ; i += 2 {
	
		if rings[i] == 'R' {
			sticks[rings[i + 1] - '0'] *= 2
		}else if rings[i] == 'W' {
			sticks[rings[i + 1] - '0'] *= 3
		}else if rings[i] == 'B'{
			sticks[rings[i + 1] - '0'] *= 5
		}
	}
	counter := 0
	//На скольких кольцах стержни одного цвета
	for i := 0; i < len(rings); i ++ {
		if (sticks[i] % 30 == 0) {
			counter++
		}
	}
	fmt.Println(counter)
 }
