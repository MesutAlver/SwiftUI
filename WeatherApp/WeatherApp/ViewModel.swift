//
//  ViewModel.swift
//  WeatherApp
//
//  Created by mesut alver on 20.12.2022.
//

import Foundation


// DATA NEEDED BY VİEW



class WeatherViewModel: ObservableObject {
    @Published var title: String = "-"
    @Published var descriptionText: String = "-"
    @Published var temp: String = "-"
    @Published var timezone: String = "-"
    
    init() {
        fetchWeather()
    }
    
    func fetchWeather() {
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat={10.44}&lon={44.34}&appid={API key}") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: URL) { data, response, error in
            guard let data
                    = data, error == nil else {
                return
            }
        }
        task.resume()
    }
    
}
