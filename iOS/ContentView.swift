//
//  ContentView.swift
//  iOS
//
//  Created by Diego Sierraalta on 2021-10-02.
//

import SwiftUI
import Weather

struct ContentView: View {
    
    var viewModel = PredictionViewModel()
    
    // Generates a new prediction
    let prediction = viewModel.providePredictionFor()
    
    var body: some View {
        VStack {
            HStack {
                Text("Weather Prediction")
            }
            
            // Displays condition
            Text(\(prediction.condition.description.lowercased()))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
