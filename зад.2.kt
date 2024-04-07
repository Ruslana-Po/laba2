/*	for (i in 0..rings.count() step 2) {
		if (rings[i].equals("R") || rings[i].equals("R") || rings[i].equals("W")) {
			if (rings[i + 1] < "0" || rings[i + 1]>"9") {
				print("error")
			}
		} else {
			print("error")
		}
	}
*/	
import kotlin.math.sqrt 
import java.util.Scanner 
fun main()  {
    val scanner = Scanner(System.`in`)
    print("enter string: ") 
    var rings = ""
    rings = scanner.nextLine()              
    scanner.close(); 

val sticks: Array<Int> = arrayOf(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
for (i in 0..rings.count()-2 step 2) {
		if (rings[i] == 'R') {
			sticks[rings[i + 1].toInt()-48] *= 2
		} else if (rings[i] == 'W') {
			sticks[rings[i + 1].toInt()-48] *= 3
		} else if (rings[i] == 'B'){
			sticks[rings[i + 1].toInt()-48] *= 5
		}
	}
	var counter = 0
	for (i in 0..sticks.size-1) {
		if (sticks[i] % 30 == 0) {
			counter++
			
		}
	}
	print(counter)
 }
