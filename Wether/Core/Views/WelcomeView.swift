//
//  WelcomeView.swift
//  Wether
//
//  Created by Егор  on 16.08.2022.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack{
            VStack(spacing: 20){
                Text("Welcome to the \n Weather App")
                    .bold()
                    .font(.title)
                    .foregroundColor(Color.theme.accent)
                Text("Please share your current location to get \n the weather in your area")
                    .foregroundColor(Color.theme.secondaryText)
                    .font(.headline)
            }.frame(maxWidth: .infinity)
            LocationButton(.sendCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(40)
            .padding()
            .symbolVariant(.fill)
            .foregroundColor(Color.theme.accent)

        }
        .multilineTextAlignment(.center)
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.theme.background)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
