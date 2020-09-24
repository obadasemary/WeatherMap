//
//  ContentView.swift
//  WeatherMap
//
//  Created by Abdelrahman Mohamed on 24.09.2020.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            
            TextField("Enter city name", text: self.$weatherVM.cityName, onCommit:  {
                
                self.weatherVM.search()
            })
            .font(.custom("Arial", size: 50))
            .foregroundColor(.white)
            .fixedSize()
            .padding()
            .offset(y: 100)
            
            Text("\(self.weatherVM.temperature) °C")
                .foregroundColor(.white)
                .offset(y: 100)
                .font(.largeTitle)
                .padding()
            
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.pink)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
