import math

# Функция проверки на простоту
def findPrime(originalNumber):
    # Проверка простоты
    for i in range(2, int(originalNumber**0.5)+1):
        if originalNumber % i == 0:
            return 0
    return 1

# Функция для поиска ближайшего простого числа
def nearestPrimeNumber(originalNumber):
    leftward = originalNumber
    right = originalNumber + 1
    # Проверка слева, справа или само число простое
    while True:
        if findPrime(leftward):
            return leftward
        elif findPrime(right):
            return right
        leftward -= 1
        right += 1
        
# Ввод числа
number = int(input("Введите число больше или равное 0: "))

while number<0:
    number = int(input("Не верно введено значение, введите занво: "))
        
if number==1 or number==0:
    primeNumber=2
else:
    primeNumber = nearestPrimeNumber(number)
    
# Вывод
print(f"Ближайшее простое число находится на расстоянии {abs(number - primeNumber)} чисел")
