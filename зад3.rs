use std::io;

fn Re(mut number: i32) -> i32 {
    let mut result = 0;
    //Переворачиваем
    while number != 0 {
        result = result * 10 + (number % 10);
        //Деление без остатка
        number= number / 10;
    }
    return result;
}
fn main() {
    println!("Введите количество: ");
    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Ошибка при чтении");
    let mut n :i32 = input.trim().parse().expect("Не верное значение");
    //Ввод чисел
    for _i in 0..= n-1  {
        println!("Введите число: ");
        let mut new_input = String::new();
        io::stdin()
        .read_line(&mut new_input)
        .expect("Ошибка при чтении");
        let mut number = new_input.trim().parse().expect("Не верное значение");
        //Преравниваем
        number=Re(number);
       println!("{}",number);
    }
    
}
