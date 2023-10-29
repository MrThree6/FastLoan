//
//  Home.swift
//  Fastloan
//
//  Created by Nosaibah Alrajhi on 29/10/2023.
//

import SwiftUI

struct Home: View {
    
    @State private var fahrenheit = 32.0
        
        private let minValue = 32.0
        private let maxValue = 570.0

        let gradient = Gradient(colors: [.green, .orange, .pink])
    
    var body: some View {
        Gauge(value: fahrenheit, in: minValue...maxValue) {
                        Label("Temperature (°F)", systemImage: "thermometer.medium")
                    } currentValueLabel: {
                        Text(Int(fahrenheit), format: .number)
                    } minimumValueLabel: {
                        Text("3")
                    } maximumValueLabel: {
                        Text("570")
                    }.gaugeStyle(.accessoryCircularCapacity).scaleEffect(4)
        
    }
}

struct Home_Previews: PreviewProvider {
  static var previews: some View {
    Home()
  }
}
