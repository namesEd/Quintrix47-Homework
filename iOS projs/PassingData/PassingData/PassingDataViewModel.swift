//
//  PassingDataViewModel.swift
//  PassingData
//
//  Created by Edward Kyles on 6/11/23.
//

import Foundation

struct Person: Identifiable {
    var id = UUID()
    
    let firstName: String
    let lastName: String
    
    static let mockPerson = [
        Person(firstName: "Monty", lastName: "Python"),
        Person(firstName: "Edward", lastName: "Smith"),
        Person(firstName: "Mike", lastName: "Jones"),
        Person(firstName: "Bob", lastName: "Lyon"),
        Person(firstName: "Sarah", lastName: "Black"),
        Person(firstName: "Elliott", lastName: "Kyles"),
    ]
}


struct Location: Identifiable {
    var id = UUID()
    
    let city: String
    let state: String
    
    static let mockLocation = [
        Location(city: "Bakersfield", state: "California"),
        Location(city: "Freemont", state: "California"),
        Location(city: "Los Angeles", state: "California"),
        Location(city: "New York", state: "New York"),
        Location(city: "Seattle", state: "Washington"),
    ]
}

class PassingDataViewModel: ObservableObject {
    
    @Published var persons: [Person] = [Person(firstName: "Sam", lastName: "Swan")]
    
    @Published var locations: [Location] = [Location(city: "Las Vegas", state: "Nevada")]
    
    func fetchPerson() {
        DispatchQueue.main.asyncAfter(deadline: .now()+4) {
            self.persons = Person.mockPerson
        }
    }
    
    func fetchLocation() {
        DispatchQueue.main.asyncAfter(deadline: .now()+4) {
            self.locations = Location.mockLocation
        }
    }
}
