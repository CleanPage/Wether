//
//  WeatherService.swift
//  Wether
//
//  Created by Егор  on 15.08.2022.
//

//https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}
import CoreLocation
import Foundation

//final class CurrentWeatherService{
//    private let API_KEY = "92edb64edb10a41089edb7e205e6b2b3"
//    private let locationManager = CLLocationManager()
//    locationManager.delegate = self
//    private var cordinats = locationManager.requestLocation()
//    private let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\()&lon={lon}&appid={API key}")
//}

struct APIResponse{
    let name: String
    let main: APIMain
    let weather: [APIWeather]
}

struct APIMain: Decodable{
    let temp: Double
}

struct APIWeather: Decodable{
    let description: String
    let iconName: String
    
    enum CodingKeys: String, CodingKey{
        case description
        case iconName = "main"
    }
}
