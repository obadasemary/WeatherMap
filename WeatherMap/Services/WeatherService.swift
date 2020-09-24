//
//  WeatherService.swift
//  WeatherMap
//
//  Created by Abdelrahman Mohamed on 24.09.2020.
//

import Foundation

class WeatherService {
    
    let appId = "56abb5d245399108961d3b2422a0f9da"
    let path = "http://api.openweathermap.org/data/2.5/weather?q="
    let appIDPath = "&appid="
    let unitsPath = "&units=metric"
    
    func getWeather(city: String, completions: @escaping (Weather?) -> ()) {
        
        let fullPath = path + city + appIDPath + appId + unitsPath
        
        guard let url = URL(string: <#T##String#>) else {
            <#statements#>
        }
    }
}
