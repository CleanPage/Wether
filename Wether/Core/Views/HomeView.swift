//
//  HomeView.swift
//  Wether
//
//  Created by Егор  on 27.07.2022.
//

import SwiftUI

struct HomeView: View {
    @StateObject var locationManager = LocationManager()
    var weatherService = WeatherService()
    @State var weather: WeatherForcast?
    var body: some View {
        if let location = locationManager.location{
            if let weather = weather{
                WeatherView(weatherForcast: weather)
            }
            else{
                ProgressView()
                    .task {
                        do {
                            weather = try await weatherService.getCurrentWeather(latitude: location.latitude, lontitude: location.longitude)
                        } catch{
                            print("Error getting weather: \(error)")
                        }
                    }
            }
        }else{
            WelcomeView()
                .environmentObject(locationManager)
        }
        
        
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}

