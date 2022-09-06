//
//  Details.swift
//  Wether
//
//  Created by Егор  on 17.08.2022.
//

import SwiftUI

struct DetailsView: View {
    var weatherForcast: WeatherForcast
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Weather now")
                .padding(.vertical)
                .font(.headline.bold())
                .foregroundColor(Color.theme.background)
            HStack(spacing: 20){
                Image(systemName: "thermometer.snowflake")
                    .padding()
                    .font(.headline)
                    .background {
                        Circle()
                            .fill(Color.theme.grey)
                    }
                VStack{
                    Text("Min temp")
                    Text("\(weatherForcast.main.tempMin.roundDouble())°")
                        .font(.title3.bold())
                }
                Spacer()
                Image(systemName: "thermometer")
                    .padding()
                    .font(.headline)
                    .background {
                        Circle()
                            .fill(Color.theme.grey)
                    }
                VStack{
                    Text("Max temp")
                    Text("\(weatherForcast.main.tempMax.roundDouble())°")
                        .font(.title3.bold())
                }
            }
            HStack(spacing: 20){
                Image(systemName: "wind")
                    .padding()
                    .font(.headline)
                    .background {
                        Circle()
                            .fill(Color.theme.grey)
                    }
                VStack{
                    Text("Wind speed")
                    Text("\(weatherForcast.wind.speed.roundDouble())m/s")
                        .font(.title3.bold())
                }
                Spacer()
                Image(systemName: "humidity")
                    .padding()
                    .font(.headline)
                    .background {
                        Circle()
                            .fill(Color.theme.grey)
                    }
                VStack{
                    Text("Humidity")
                    Text("\(weatherForcast.main.humidity)%")
                        .font(.title3.bold())
                }
            }
        }
        .multilineTextAlignment(.leading)
        .frame(maxWidth: .infinity)
        .foregroundColor(Color.theme.background)
        .padding(.horizontal)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(weatherForcast: dev.weather)
    }
}


