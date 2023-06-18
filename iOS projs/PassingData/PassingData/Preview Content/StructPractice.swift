//
//  StructPractice.swift
//  PassingData
//
//  Created by Edward Kyles on 6/11/23.
//

import Foundation

//not a reference type, makes copies as needed. Uses the stack
//values types

struct Baloon {
    var color: String = "" //Vars do not need to be initialized immediately
    
    
    mutating func test() {
        self.color = "green"
    }
}


//Makes a reference, knows where the object is and does not make coppies. uses the heap
//they need all the vars/properties initialized
class ViewModel {
    var color: String
    
    let baloon = Baloon(color: "Blue")
    let baloon1 = Baloon()
    
    init(color: String) {
        self.color = color
    }
    
    func test() {
        self.color = "blue"
    }
}
