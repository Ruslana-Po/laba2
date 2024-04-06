import java.util.Scanner;
public class Main{
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    System.out.print("Введите строку:  ");
    String str = scanner.nextLine();
    char[] rings = str.toCharArray();
	//Проверка
	for (int i = 0; i < rings.length ; i += 2) {
		if (rings[i]=='R' || rings[i]=='B' || rings[i]=='W') {
			if (rings[i + 1] < '0' || rings[i + 1]>'9') {
				System.out.print("Значение было введено неверно");
			}
		}else {
			System.out.print("Значение было введено неверно");
		}
	}
	
int[] sticks = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
	//Считаем кол-во колец на каждом стержне
for (int i = 0; i < rings.length; i += 2) {
	
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
	for (int i=0; i<sticks.length;i++) {
		if (sticks[i] % 30 == 0) {
			counter++;
		}
	}
	System.out.print(counter);
  }
}
