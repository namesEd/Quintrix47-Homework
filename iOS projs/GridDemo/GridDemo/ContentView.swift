//
//  ContentView.swift
//  GridDemo
//
//  Created by Edward Kyles on 6/11/23.
//

import SwiftUI

struct ContentView: View {
    
    let data = (1...10).map {"Item \($0)"}
    
    var body: some View {
        let colomns: [GridItem] =  [
            
            GridItem(.adaptive(minimum: 130, maximum: 250), spacing: 5, alignment: .center)
        ]
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colomns) {
                    ForEach(data, id: \.self) { item in
                        NavigationLink (destination: Text(item)){
                            
                            VStack {
                                Text("The due point is 47°F now")
                                Text(item)
                            }
                            //order of modifiers matters
                            .padding()
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10) //sharpens/rounds corners
                        }
                    }
                }
            }
            .navigationTitle("Grids")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
