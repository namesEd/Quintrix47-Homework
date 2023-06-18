//
//  DailyView.swift
//  WeatherAppDemo
//
//  Created by Edward Kyles on 6/10/23.
//

import SwiftUI


struct DailyView: View {
    var body: some View {
        VStack(spacing: -1) {
            HStack {
                Image(systemName: "calendar")
                    .foregroundColor(.white)
                Text("10-Day Forecast")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .opacity(0.7)
                Spacer()
            }
            .padding()
            
            Divider()
            
            LazyVStack(alignment: .leading, spacing: 10) {
                ForEach(DayData.mockData) { dia in
                    HStack(spacing: 12) {
                        Text(dia.day)
                            .font(.system(size: 25).bold())
                            .foregroundColor(.white)
                            .frame(width: 70, alignment: .leading)
                        
                        Image(systemName: dia.weatherImage)
                            .resizable()
                            .frame(width: 15, height: 20)
                            .foregroundColor(.yellow)
                            .frame(width: 25, alignment: .leading)
                        
                        Image(systemName: dia.rainImage)
                            .resizable()
                            .frame(width: 15, height: 20)
                            .foregroundColor(.gray)
                            .frame(width: 25, alignment: .leading)
                        
                        Text(dia.rainChance)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .frame(width: 50, alignment: .leading)
                        
                        Text(dia.highTemp)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .frame(width: 75, alignment: .leading)
                        
                        Text(dia.lowTemp)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .opacity(0.6)
                            .frame(width: 75, alignment: .leading)
                    }
                    .padding(1)
                    //.background(.green)
                }
            }
            
            .padding()
        }
    }
}


struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView()
    }
}
