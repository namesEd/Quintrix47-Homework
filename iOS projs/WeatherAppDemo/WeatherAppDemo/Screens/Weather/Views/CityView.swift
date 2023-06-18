//
//  CityView.swift
//  WeatherAppDemo
//
//  Created by Edward Kyles on 6/14/23.
//

import SwiftUI



struct CityView: View {
    
    let weatherData: [WeatherData] = [
        WeatherData(imageName: "sun.max.fill", title: "UV Index", mainImage: "", value: "9.7"),
        WeatherData(imageName: "sunset", title: "Sunset", mainImage: "sunset.fill", value: "1856"),
        WeatherData(imageName: "wind", title: "Wind", mainImage: "arrow.up.forward", value: "8 MPH"),
        WeatherData(imageName: "humidity", title: "Humidity",mainImage: "45.circle.fill", value: "The dew point is 47° right now"),
        WeatherData(imageName: "eye.fill", title: "Visibility", mainImage: "10.circle.fill", value: "10 miles of clear vision"),
        WeatherData(imageName: "gauge.medium", title: "Pressure", mainImage: "speedometer", value: "The current pressure is 29.95 inHG")

    ]
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, . orange,], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            
            VStack (spacing: 0){
                
                Text("Los Angeles")
                    .font(.system(size: 30).bold())
                    .padding(0)
                    .foregroundColor(.white)
                //                Image(systemName: "sun.and.horizon")
                //                    .resizable()
                //                    .foregroundColor(.yellow)
                //                    .frame(width: 250, height: 150)
                HStack {
                    Text("75°F")
                        .font(.system(size: 20).bold())
                        .foregroundColor(.white)
                    Divider()
                        .frame(height: 20)
                    Text("Clear")
                        .font(.system(size: 20).bold())
                        .padding(0)
                        .foregroundColor(.white)
                } .padding(10)
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    ForEach(weatherData) { data in
                        WeatherGridView(imageName: data.imageName, title: data.title, mainImage: data.mainImage, value: data.value)
                    }
                }
                
                
                Spacer()
                
            }
            //.background(.orange)
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
