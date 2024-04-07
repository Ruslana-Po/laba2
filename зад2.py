import math
rings = input("Введите строку:  ")
	#Проверка
for i in range(0, len(rings), 2): 
	if rings[i]=='R' or rings[i]=='B' or rings[i]=='W': 
		if rings[i + 1] < '0' or rings[i + 1]>'9':
			print("Значение было введено неверно")
			
	else:
		print("Значение было введено неверно")
		
sticks = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]	
	#Считаем кол-во колец на каждом стержне
for i in range(0, len(rings), 2):
	
	if rings[i] == 'R': 
		sticks[int(rings[i + 1])] *= 2
	elif rings[i] == 'W': 
		sticks[int(rings[i + 1])] *= 3
	elif rings[i] == 'B':
		sticks[int(rings[i + 1])] *= 5
counter = 0
	#На скольких кольцах стержни одного цвета
for i in sticks: 
	if i % 30 == 0 :
		counter+=1
print(counter)
