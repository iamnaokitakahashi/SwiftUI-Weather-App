//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Naoki Takahashi on 10/12/23.
// make this file if this is going to be used all over the app itself
// Project organization 101

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10) //10 is apple looking bottom
    }
    
}
