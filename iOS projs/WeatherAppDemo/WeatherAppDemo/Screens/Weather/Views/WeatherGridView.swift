//
//  WeatherGridView.swift
//  WeatherAppDemo
//
//  Created by Edward Kyles on 6/14/23.
//

import SwiftUI

struct WeatherGridView: View {
    let imageName: String
    let title: String
    let mainImage: String
    let value: String
    
    var body: some View {
        VStack {
            HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
            
            Text(title)
                .font(.system(size: 16).bold())
                .foregroundColor(.white)
        }
            Image(systemName: mainImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
                
                Text(value)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
            }
            .padding()
            .background(.blue)
            .cornerRadius(10)
            .opacity(0.7)
        }
    }

    struct WeatherData: Identifiable {
        let id = UUID()
        let imageName: String
        let title: String
        let mainImage: String
        let value: String
    }

struct WeatherGridView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherGridView(imageName: "sun.max.fill", title: "Temperature", mainImage:"sun.max.fill", value: "75°F")
    }
}

