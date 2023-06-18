//
//  ContentView.swift
//  GridDemo
//
//  Created by Edward Kyles on 6/11/23.
//

import SwiftUI

struct ListView: View {
    
    let data = (1...50).map {"Item \($0)"}
    
    var body: some View {
        NavigationView {
            VStack {
                List(data, id: \.self) { num in
                    NavigationLink(destination: Text(num)) {
                        Text(num)
                    }
                    
                    
                }
            }
            .navigationTitle("Numbers")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
