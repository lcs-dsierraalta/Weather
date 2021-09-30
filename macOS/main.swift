//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation


while true {
    // Generate a weather prediction
    let prediction = WeatherPredictionGenerator.getPrediction()
    
    // Show the prediction
    print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
    
    print("That's \(prediction.feel.lowercased())!")
    
    while true {
        print("More predictions? (Y/N)")
        let selection = readLine()!
        if selection == "Y" {
            break
        } else if selection == "N" {
            exit(0)
        }
    }
    
}
