//
//  ContentView.swift
//  WeatherAppDemo
//
//  Created by Edward Kyles on 6/10/23.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        NavigationView() {
            ZStack{
                LinearGradient(colors: [.blue, . orange,], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea(.all)
                
                ScrollView {
                    HeaderView()
                    HourlyView()
                    VStack (spacing: 0){
                        DailyView()
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
