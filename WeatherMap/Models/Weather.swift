//
//  Weather.swift
//  WeatherMap
//
//  Created by Abdelrahman Mohamed on 24.09.2020.
//

import Foundation

struct WeatherResponse: Decodable {
    
    let main: Weather
}

struct Weather: Decodable {
    
    var temp: Double?
    var humidity: Double?
}
