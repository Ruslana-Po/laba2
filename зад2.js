let n = prompt("Введите количество: ");
    //Ввод чисел
    for (let i = 0; i < n; i++) {
        let number = prompt("Введите число: ");
        let x = number;
        let result = 0;
        //Переворачиваем
         while (x != 0) {
            result = result * 10 + (x % 10);
            //Деление без остатка
            x = Math.floor(x / 10);
        }
        //Преравниваем
        number = result;
        console.log(number);
    }
    
