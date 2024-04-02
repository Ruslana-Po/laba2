# Функция проверки на простоту
def findPrime(originalNumber)
    # Проверка простоты
    for i in 2..Math.sqrt(originalNumber)
        return 0 if originalNumber % i == 0
    end
    return 1
end

# Функция для поиска ближайшего простого числа
def nearestPrimeNumber(originalNumber)
    leftward = originalNumber
    right = originalNumber + 1
    check = 1
    # Проверка слева, справа или само число простое
    while check >0
        if findPrime(leftward) == 1
            return leftward 
        elsif findPrime(right) == 1
            return right 
        end
        leftward -= 1
        right += 1
    end
end

# Ввод числа
print "Введите число больше или равное 0: "
number = gets.chomp.to_i

while number <= 0
    print "Не верно введено значение, введите заново: "
    number = gets.chomp.to_i
end

primeNumber =  number == 1 ? 2 : nearestPrimeNumber(number)

# Вывод
puts "Ближайшее простое число находится на расстоянии #{(number - primeNumber).abs} чисел"
