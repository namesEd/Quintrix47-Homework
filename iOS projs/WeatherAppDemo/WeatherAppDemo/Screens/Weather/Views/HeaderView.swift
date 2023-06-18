//
//  HeaderView.swift
//  WeatherAppDemo
//
//  Created by Edward Kyles on 6/10/23.
//

import Foundation


import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        VStack (spacing: 0){
            NavigationLink(destination: CityView()) {
                Text("Los Angeles")
                    .font(.system(size: 30).bold())
                    .padding(20)
                    .foregroundColor(.white)
            }
            Text("75°F")
                .font(.system(size: 100).bold())
                .padding(10)
                .foregroundColor(.white)
            Text("Clear")
                .font(.system(size: 35).bold())
                .padding(0)
                .foregroundColor(.white)
            HStack {
                Text("H: 75°")
                    .font(.system(size: 25))
                    .opacity(0.7)
                    .padding(0)
                    .foregroundColor(.white)
                Text("L: 65°")
                    .font(.system(size: 25))
                    .opacity(0.7)
                    .padding(0)
                    .foregroundColor(.white)
            }
            Spacer()
            
            
        }
        //.background(.gray)
        .padding(0)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
