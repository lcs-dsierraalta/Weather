//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation

// Connects main.swift to the viewModel
var viewModel = PredictionViewModel()


while true {
    
    print("Weather Prediction App")
    print("======================")
    print("1 - Get prediction")
    print("2 - History")
    print("Q - Quit")
    print("")
    print("Choose option (1/2/Q)")
    
    let choice = readLine()!
    
    switch choice {
    case "1":
        
        // Generates a new prediction
        let prediction = viewModel.providePredictionFor()
        
        // Show the prediction
        print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
        
        print("That's \(prediction.feel.lowercased())!")
    case "2":
        for prediction in viewModel.predictions {
            
            print("\(String(format: "%.1f", arguments: [prediction.temperature])) °C")
            print(prediction.feel)
            print(prediction.condition.description.lowercased())
            print("")
        }
    case "Q": exit(0)
        
    default:
        break
    }
    
    
}
