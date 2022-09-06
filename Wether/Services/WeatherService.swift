//
//  WeatherManager.swift
//  Wether
//
//  Created by Егор  on 16.08.2022.
//

//https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}

import Foundation
import CoreLocation

class WeatherService: ObservableObject{
    let API_KEY = "92edb64edb10a41089edb7e205e6b2b3"
    func getCurrentWeather(latitude: CLLocationDegrees, lontitude: CLLocationDegrees) async throws -> WeatherForcast{
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(lontitude)&appid=\(API_KEY)&units=metric") else{fatalError("Missing URL")}
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url, delegate: nil)
            guard let response = response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else{
                fatalError("Error while fetching data")
            }
            
            let currentWeather = try JSONDecoder().decode(WeatherForcast.self, from: data)
            return currentWeather
            
        } catch  {
            throw error
        }
    }
}
