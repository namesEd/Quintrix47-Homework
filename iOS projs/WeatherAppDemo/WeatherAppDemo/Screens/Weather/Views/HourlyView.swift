//
//  HourlyView.swift
//  WeatherAppDemo
//
//  Created by Edward Kyles on 6/10/23.
//

import SwiftUI

struct HourlyView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            VStack {
                HStack {
                    Text("Sunny conditions will continue all day")
                        .font(.system(size:20))
                        .foregroundColor(.white)
                    
                    Spacer()
                } .padding()
                
                Divider()
                HStack {
                    ForEach(HourlyData.mockData) { hour in
                        VStack (spacing: 10) {
                            Text(hour.time)
                                .font(.system(size:20))
                                .foregroundColor(.white)
                            Image(systemName: hour.image)
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.orange)
                            Text(hour.temperature)
                                .font(.system(size:20))
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                    //.background(.red)
                }
            }
            //.background(.green)
        }
    }
}

struct HourlyView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyView()
    }
}
