print "Введите строку:  "
rings = STDIN.gets
	#Проверка
for i in (0..rings.length)
    if(i%2==0)
	    if rings[i]=='R' or rings[i]=='B' or rings[i]=='W'
		    if rings[i + 1] < '0' or rings[i + 1]>'9'
			    print "Значение было введено неверно"
			
		end
        end
    end
end
sticks = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]	
#Считаем кол-во колец на каждом стержне
for i in(0..rings.length) 
    if(i%2==0)
	    if rings[i] == 'R' 
		    sticks[rings[i + 1].to_i] *= 2
    	elsif rings[i] == 'W' 
		    sticks[rings[i + 1].to_i] *= 3
	    elsif rings[i] == 'B'
		    sticks[rings[i + 1].to_i] *= 5
	    end
	end
 end
counter = 0
	#На скольких кольцах стержни одного цвета
for i in sticks 
	if i % 30 == 0
		counter+=1
	 end
 end
print(counter)
