function re(number){
let result = 0;
//Переворачиваем
while (number != 0) {
    result = result * 10 + (number % 10);
    //Деление без остатка
   number= Math.floor(number / 10);
}
return result;
}
//Главная
let n = prompt("Введите количество: ");
//Ввод чисел
for (let i = 0; i < n; i++) {
    let number = prompt("Введите число: ");
    //Преравниваем
    number=re(number);
    console.log(number);
}
