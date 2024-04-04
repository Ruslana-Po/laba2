/// Функция проверки на простоту
function findPrime(originalNumber) {
    // Проверка простоты
    for (let i = 2; i <= Math.sqrt(originalNumber); i++) {
        if (originalNumber % i === 0) {
            return false;
        }
    }
    return true;
}

// Функция для поиска ближайшего простого числа
function nearestPrimeNumber(originalNumber) {
    let leftward = originalNumber;
    let right = originalNumber ++;
    while (true) {
        if (findPrime(leftward)) {
            return leftward;
        } else if (findPrime(right)) {
            return right;
        }
        leftward--;
        right++;
    }
}

// Главная функция

    let number = prompt("Введите число больше 0: ");
    let primeNumber; 
     while(number < 0){
     number = prompt("Не верно введено значение, введите заново : ");
    }
    if(number==0 || number==1){
        primeNumber =2;
    }else{
        primeNumber = nearestPrimeNumber(number);
    }
    console.log(Math.abs(number-primeNumber));
