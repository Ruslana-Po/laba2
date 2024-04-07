import Foundation
    var rings = ""
    print("Введите строку:  ")
    if let input = readLine() {
        rings = input
    }
//Проверка
 for i in 0...(rings.count-2) where i % 2 == 0  {
 let j = rings.substring(from: i).substring(to: 1)
 let j1 = rings.substring(from: i+1).substring(to: 1)
  if j=="R" || j=="B" ||  j=="W" {
   if j1 < "0" || j1>"9" {
    print("Значение было введено неверно")
   }
  }else {
   print("Значение было введено неверно")
  }
 }
  
var sticks: [Int] = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] 
 //Считаем кол-во колец на каждом стержне
for i in 0...(rings.count-2) where i % 2 == 0 {
   let j = rings.substring(from: i).substring(to: 1)
   let j1 = rings.substring(from: i+1).substring(to: 1)
  if j == "R" {
   sticks[Int(j1)!] *= 2
  }else if j == "W" {
   sticks[Int(j1)!] *= 3
  }else if j == "B"{
   sticks[Int(j1)!] *= 5
  }
 }

 var counter = 0
 //На скольких кольцах стержни одного цвета
 for i in 0...(sticks.count-1) {
  if sticks[i] % 30 == 0 {
   counter += 1
  }
 }
 print(counter)
