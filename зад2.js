let rings= prompt("Введите строку: ");
	//Проверка
	for (let i = 0; i < rings.length ; i += 2) {
		if (rings[i] === 'R' || rings[i] === 'W' || rings[i] === 'B') {
			if (rings[i + 1] < '0' || rings[i + 1]>'9') {
				console.log("Значение было введено неверно");
				return 0;
			}
		}else {
			console.log("Значение было введено неверно");
			return 0;
		}
	}
	
let sticks = [1,1,1,1,1,1,1,1,1,1];
	//Считаем кол-во колец на каждом стержне
for (let i = 0; i < rings.length ; i += 2) {
	
		if (rings[i] === 'R') {
			sticks[rings[i + 1] - '0'] *= 2;
		}
		else if (rings[i] === 'W') {
			sticks[rings[i + 1] - '0'] *= 3;
		}
		else if (rings[i] === 'B') {
			sticks[rings[i + 1] - '0'] *= 5;
		}
	}
	let counter = 0;
	//На скольких кольцах стержни одного цвета
	for (let i=0; i<sticks.length;i++) {
		if (sticks[i] % 30 === 0) {
			counter++;
		}
	}
	console.log(counter);
