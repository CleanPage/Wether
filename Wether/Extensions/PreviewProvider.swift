//
//  PreviewProvider.swift
//  Wether
//
//  Created by Егор  on 16.08.2022.
//

import Foundation
import SwiftUI
extension PreviewProvider{
    
    static var dev: DeveloperPreview{
        return DeveloperPreview.instance
    }
    
}

class DeveloperPreview{
    
    static var instance = DeveloperPreview()
    private init() {}

    
    let weather = WeatherForcast(coord: Coord(lon: -122.08, lat: 37.39),
                                 weather: [Weather(id: 800,
                                                   main: "Clear",
                                                   weatherDescription: "clear sky",
                                                   icon: "sun")],
                                 base: "stations",
                                 main: Main(temp: 22.95,
                                            feelsLike: 23.73,
                                            tempMin: 22.95,
                                            tempMax: 22.95,
                                            pressure: 1023,
                                            humidity: 100),
                                 visibility: 10000,
                                 wind: Wind(speed: 1.5,
                                            deg: 350),
                                 clouds: Clouds(all: 1),
                                 dt: 1560350645,
                                 sys: Sys(type: 1,
                                          id: 5122,
                                          country: "US",
                                          sunrise: 1560343627,
                                          sunset: 1560396563),
                                 timezone: -25200,
                                 id: 420006353,
                                 name: "Mountain View",
                                 cod: 200)
}
