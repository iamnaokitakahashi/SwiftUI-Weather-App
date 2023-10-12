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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading,
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
                HStack {
                    VStack {
                        Text("Tue")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("76°") // option + shift + 8 = °
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                }
                
                   Spacer() // this is a modifer, use it to stragically move your UI around, in this case since its at the bottom, it'll move the entire text to the top
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
