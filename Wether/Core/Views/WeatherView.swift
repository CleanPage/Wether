//
//  WeatherView.swift
//  Wether
//
//  Created by Егор  on 16.08.2022.
//

import SwiftUI

struct WeatherView: View {
    var weatherForcast: WeatherForcast
    let imageURL = URL(string: "https://cdn.pixabay.com/photo/2020/01/24/21/33/city-4791269_960_720.png")
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 5){
                Text(weatherForcast.name)
                    .font(.title.bold())
                    .foregroundColor(Color.theme.accent)
                Text("Today,\(Date().formatted(.dateTime.month().day().hour().minute()))")
                    .foregroundColor(Color.theme.secondaryText)
                    .fontWeight(.light)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            HStack{
                VStack{
                    WeatherAnimation(name: weatherForcast.weather.first?.main ?? "")
                        .frame(width: 70, height: 70, alignment: .leading)
                    Text(weatherForcast.weather.first?.main ?? "")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color.theme.accent)
                }
                Spacer()
                Text("\(weatherForcast.main.temp.roundDouble())°")
                    .foregroundColor(Color.theme.accent)
                    .font(.system(size: 90).bold())
            }
            .padding()
            .frame(maxWidth: .infinity)
            Spacer()
            AsyncImage(url: imageURL){ image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350)
            } placeholder: {
                ProgressView()
            }
            Spacer()
           DetailsView(weatherForcast: weatherForcast)
                .padding(.bottom)
                .padding(.bottom)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.theme.accent)
                }
        }
        .edgesIgnoringSafeArea(.bottom)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.theme.background)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weatherForcast: dev.weather)
    }
}
