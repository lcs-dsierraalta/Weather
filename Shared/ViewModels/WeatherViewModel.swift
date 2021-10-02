//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation

class PredictionViewModel {
    var predictions: [Prediction] = []
    
    func providePredictionFor() -> Prediction {
        
        // Generate a weather prediction
        let currentPrediction = WeatherPredictionGenerator.getPrediction()
        
        predictions.append(currentPrediction)
     
        return currentPrediction
    }
}
