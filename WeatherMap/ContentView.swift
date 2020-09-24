//
//  ContentView.swift
//  WeatherMap
//
//  Created by Abdelrahman Mohamed on 24.09.2020.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        Text("Hello, world!, \(path + city + appIDPath + appId + unitsPath)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
