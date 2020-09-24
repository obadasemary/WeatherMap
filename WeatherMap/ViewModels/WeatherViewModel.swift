//
//  WeatherViewModel.swift
//  WeatherMap
//
//  Created by Abdelrahman Mohamed on 24.09.2020.
//

import Foundation
import Combine

class WeatherViewModel: ObservableObject {
    
    private var weatherService: WeatherService!
    
    @Published var weather = Weather()
    var cityName: String = ""
    
    init() {
        
        self.weatherService = WeatherService()
    }
    
    var temperature: String {
        
        if let temp = self.weather.temp {
            return String(format: "%.0f", temp)
        } else {
            return ""
        }
    }
    
    var humidity: String {
        
        if let humidity = self.weather.humidity {
            return String(format: "%.0f", humidity)
        } else {
            return ""
        }
    }
    
    func search() {
        
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            
            fetchWeather(by: city)
        }
    }
    
    func fetchWeather(by city: String) {
        
        self.weatherService.getWeather(city: city) { (weather) in
            
            if let weather = weather {
                
                DispatchQueue.main.async {
                    self.weather = weather
                }
            }
        }
    }
}
