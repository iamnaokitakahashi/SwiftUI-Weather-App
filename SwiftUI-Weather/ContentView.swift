//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Naoki Takahashi on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Marin, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding() // you can put like 100, .buttom its very flexible
                
                VStack(spacing: 10) { // can play around with spacing between
                    Image(systemName: "cloud.sun.fill") // systemNamefor SF symbols
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit) // doesn;t look strethced anymore
                        .frame(width: 180, height: 180) // keep this frame square because SF S has them squared
                    
                    Text("76°") // option + shift + 8 = °
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    
                }
                .padding(.bottom, 40) // can use instead of spacing
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 88)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind.snow",
                                   temperature: 55)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temperature: 60)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "snow",
                                   temperature: 25)
                }
                
                   Spacer() // this is a modifer, use it to stragically move your UI around, in this case since its at the bottom, it'll move the entire text to the top
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10) //10 is apple looking bottom
                }
                
                Spacer() // don't overuse spacers
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View { // everyting in swift is VIEW
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack { // command click on the vstack to refactor
            Text(dayOfWeek) // replace Tues with dayOfWeek so create var dayOfWeek
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName) //not everyday is going to be cloudy or sunny, so create var imageName
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°") // instead of "76°"
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
