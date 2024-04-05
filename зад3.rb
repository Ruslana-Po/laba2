# Функция для переворота числа
def Re(number)
    result = 0
    while number != 0
        result = result * 10 + (number % 10)
        #Деление без остатка
        number= number / 10
    end
    return result
end

print "Введите кол-во: "
n = gets.chomp.to_i
for i in 0..n-1
print "\nВведите число: "
number = gets.chomp.to_i
#Преравниваем
number=Re(number)
print(number)
end
