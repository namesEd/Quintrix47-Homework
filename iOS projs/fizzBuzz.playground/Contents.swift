import UIKit
//Edward Kyles' Playground
//Activity: Print FizzBuzz
//Date 6/9/23


func fizzbuzz() {
    
}

for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("fizz buzz for number \(i)!")
    } else if i % 3 == 0 {
        print("fizz for number \(i)!")
    } else if i % 5 == 0 {
        print("buzz for number \(i)!")
    } else {
        continue
    }
}

