//
//  WeatherData.swift
//  WeatherAppDemo
//
//  Created by Edward Kyles on 6/10/23.
//

import Foundation
struct HourlyData: Identifiable{
    var id = UUID()
    let image: String
    let temperature: String
    let time: String
    
    static let mockData = [
        HourlyData(image: "cloud.drizzle.fill", temperature: "54°", time: "Now"),
        HourlyData(image: "cloud.fog.circle", temperature: "65°", time: "1000"),
        HourlyData(image: "sun.haze.circle", temperature: "70°", time: "1100"),
        HourlyData(image: "sun.max.fill", temperature: "75°", time: "1200"),
        HourlyData(image: "sun.max.fill", temperature: "78°", time: "1400"),
        HourlyData(image: "sun.max.fill", temperature: "80°", time: "1700"),
        
    ]
}

struct DayData: Identifiable {
    var id = UUID()
    let day: String
    let weatherImage: String
    let rainImage: String
    let rainChance: String
    let highTemp: String
    let lowTemp: String
    
    
    static let mockData = [
        DayData(day: "Today", weatherImage: "sun.min.fill", rainImage: "drop.fill", rainChance: "2%", highTemp: "75.3°F", lowTemp: "72°F"),
        DayData(day: "Tue", weatherImage: "cloud.sun", rainImage: "drop.fill", rainChance: "5%", highTemp: "68.3°F", lowTemp: "63°F"),
        DayData(day: "Wed", weatherImage: "sun.min.fill", rainImage: "drop.fill", rainChance: "1%", highTemp: "65.3°F", lowTemp: "55°F"),
        DayData(day: "Thu", weatherImage: "sun.min.fill", rainImage: "drop.fill", rainChance: "1%", highTemp: "61.3°F", lowTemp: "55°F"),
        DayData(day: "Fri", weatherImage: "cloud.rain.fill", rainImage: "drop.fill", rainChance: "3%", highTemp: "74.3°F", lowTemp: "60°F"),
        DayData(day: "Sat", weatherImage: "cloud.bolt.rain.fill", rainImage: "drop.fill", rainChance: "10%", highTemp: "62.3°F", lowTemp: "50°F"),
        DayData(day: "Sun", weatherImage: "cloud.rain.fill", rainImage: "drop.fill", rainChance: "9%", highTemp: "73.3°F", lowTemp: "55°F"),
        DayData(day: "Mon", weatherImage: "sun.max.fill", rainImage: "drop.fill", rainChance: "0%", highTemp: "83.3°F", lowTemp: "65°F"),
        
    ]
    
}

