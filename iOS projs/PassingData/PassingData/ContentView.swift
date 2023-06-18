//
//  ContentView.swift
//  PassingData
//
//  Created by Edward Kyles on 6/11/23.
//

import SwiftUI

struct ContentView: View {
    
    //@ObservedObject var viewModel: PassingDataViewModel
    @StateObject var viewModel = PassingDataViewModel()
    
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.persons) { person in
                    HStack(spacing: 5) {
                        Text(person.firstName)
                        Text(person.lastName)
                    }
                }
                .navigationTitle("Globe")
                .navigationBarItems(trailing: Button("Refresh", action: {
                    viewModel.fetchPerson()
                    viewModel.fetchLocation()
                }))
                
                VStack{
                    List(viewModel.locations) { location in
                        HStack(spacing: 5) {
                            Text(location.city)
                            Text(location.state)
                        }
                    }
                }
                .navigationTitle("Globe")
                .navigationBarItems(trailing: Button("Refresh", action: {
                    viewModel.fetchLocation()
                }))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: PassingDataViewModel())
    }
}
