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
    
    func getWeather(city: String, completion: @escaping (Weather?) -> ()) {
        
        let fullPath = path + city + appIDPath + appId + unitsPath
        
        guard let url = URL(string: fullPath) else {
            
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            
            guard let data = data, error == nil else {
                
                completion(nil)
                return
            }
            
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            
            if let weatherResponse = weatherResponse {
                
                let weather = weatherResponse.main
                completion(weather)
            } else {
                completion(nil)
            }
        }
        .resume()
    }
}
