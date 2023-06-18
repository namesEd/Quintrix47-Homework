import UIKit
import Foundation

class Calculator{
    
    var total: Double = 0
    init() {
        print("Initializing Calculator....")
        print("Enter a number to be calculated. Call 'printTotal' for the calculation. Clear to zero-out")
    }
    func add(_ num1: Double, _ num2: Double) {
         total = num1 + num2
    }
    
    func subtract(_ num1: Double, _ num2: Double) {
        total = num1 - num2
    }
    
    func multiply(_ num1: Double, _ num2: Double) {
        
        total = num1 * num2
    }
    
    func divide(_ num1: Double, _ num2: Double) {
        if num2 == 0 {
            print("ERROR! CANNOT DIVIDE BY 0. EXITING...")
        } else {
            total = num1 / num2
        }
    }

    func square(_ num: Double) {
        total = sqrt(num)
    }

    func clear() {
        total = 0
    }
    
    func printTotal() {
        print("Total: \(total)")
    }
}


let calc = Calculator()

//calc.add(5, 3)
calc.divide(10, 3)
calc.printTotal()

calc.square(16)
calc.printTotal()
    