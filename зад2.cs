using System;

class MainClass {
  static void Main() {
    Console.WriteLine("Введите строку:  ");
    string rings = Console.ReadLine();
	//Проверка
	for (int i = 0; i < rings.Length ; i += 2) {
		if (rings[i] == 'R' || rings[i] == 'W' || rings[i] == 'B') {
			if (rings[i + 1] < '0' || rings[i + 1]>'9') {
				Console.WriteLine("Значение было введено неверно");
			}
		}else {
			Console.WriteLine("Значение было введено неверно");
		}
	}
	
int[] sticks = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
	//Считаем кол-во колец на каждом стержне
for (int i = 0; i < rings.Length ; i += 2) {
	
		if (rings[i] == 'R') {
			sticks[rings[i + 1] - '0'] *= 2;
		}
		else if (rings[i] == 'W') {
			sticks[rings[i + 1] - '0'] *= 3;
		}
		else if (rings[i] == 'B') {
			sticks[rings[i + 1] - '0'] *= 5;
		}
	}
	int counter = 0;
	//На скольких кольцах стержни одного цвета
	for (int i=0; i<sticks.Length;i++) {
		if (sticks[i] % 30 == 0) {
			counter++;
		}
	}
	Console.WriteLine(counter);
  }
}
