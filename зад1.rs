use std::io;

// Функция проверки на простоту
fn findPrime(originalNumber: i32) -> i32 {
    // Проверка простоты
    for i in 2..=(originalNumber as f64).sqrt() as i32 {
        if originalNumber % i == 0 {
            return 0;
        }
    }
    return 1
}

// Функция для поиска ближайшего простого числа
fn nearestPrimeNumber(originalNumber: i32) -> i32 {
    let mut leftward = originalNumber;
    let mut right = originalNumber + 1;
    // Проверка слева, справа или само число простое
    loop  {
        if findPrime(leftward) == 1 {
            return leftward;
        } else if findPrime(right) == 1 {
            return right;
        }
        leftward -= 1;
        right += 1;
    }
}

fn main() {
    println!("Введите число больше или равное 0: ");
    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Ошибка при чтении");
    let mut number: i32 = input
        .trim()
        .parse()
        .expect("Ошибка при чтении");

    while number < 0 {
        println!("Не верно введено значение, введите заново: ");
        let mut new_input = String::new();
        io::stdin()
        .read_line(&mut new_input)
        .expect("Ошибка при чтении");
        number = new_input.trim().parse().expect("Не верное значение");
    }
    
    let primeNumber ;
    if number == 0 || number == 1 {
        primeNumber = 2;
    } else {
        primeNumber = nearestPrimeNumber(number);
    }

    // Вывод
    println!("Ближайшее простое число находится на расстоянии {} чисел", (number - primeNumber).abs());
}
