# Функция для переворота числа
def Re(number):
    result = 0
    while number != 0:
        result = result * 10 + (number % 10)
        #Деление без остатка
        number = number // 10
    return result


n = int(input("Введите кол-во: "))
for i in range (0, n):
    number = int(input("Введите число: "))
    #Преравниваем
    number=Re(number)
    print(number)
