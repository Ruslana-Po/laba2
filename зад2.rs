use std::io;

fn main()  {
//Ввод строки
    let mut rings = String::new();
    println!("Введите строку:  ");
    io::stdin().read_line(&mut rings).expect("Failed to read input");
    println!("Ваша строка: {}", rings);
    let length = rings.chars().count();
    //Проверка
for i in 0..length-2{
if i%2 ==0 {
   let mut j=i+1;
    //Перевод строки по индексу сначала в u8 , а потом в чар для сравнения
    let b1: u8 = rings.as_bytes()[j];
    let c1: char = b1 as char;
    let b: u8 = rings.as_bytes()[i];
    let c: char = b as char;
	if c =='R' || c =='B' || c =='W'{
		if c1 < '0' || c1>'9'{
		println!("Значение было введено неверно");
		}
	}else {
		println!("Значение было введено неверно");
	}
	}
}
//Поиск
 let mut sticks: [i32; 10] = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
  for i in 0..length-2{
  if i%2 == 0 {
  let mut j=i+1;
  let b1: u8 = rings.as_bytes()[j];
  let c1: char = b1 as char;
  let b: u8 = rings.as_bytes()[i];
  let c: char = b as char;
  //let mut z = b1.trim().parse::<i64>().unwrap();
  if c == 'R'{
		sticks[(c1 as usize)-48] *= 2;
	}else if c == 'W'{ 
		sticks[(c1 as usize)-48] *= 3;
	}else if c == 'B'{
		sticks[(c1 as usize)-48] *= 5;
	}
    }
  }
 let mut counter = 0;
 //На скольких кольцах стержни одного цвета
 for i in 0..sticks.len()-1 {
  if sticks[i] % 30 == 0 {
   counter += 1;
  }
 }
 println!("{}", counter);
  
}
