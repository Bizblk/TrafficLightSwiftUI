//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Виталий Оранский on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redTurnLight = 0.3
    @State private var yellowTurnLight = 0.3
    @State private var greenTurnLight = 0.3
    @State private var buttonTitle = "START"
    
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                
                VStack(spacing: 20) {
                    ColorCircle(color: .red)
                        .opacity(redTurnLight)
                    ColorCircle(color: .yellow)
                        .opacity(yellowTurnLight)
                    ColorCircle(color: .green)
                        .opacity(greenTurnLight)
                }.padding(.top, 70)
                Spacer()
                
                Button(action: {trafficLight()} ) {
                    Text(buttonTitle)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                .frame(width: 200, height: 75)
                .background(Color.blue)
                .cornerRadius(20.0)
                .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 4))
                .padding(.bottom, 60)
            }
            
        }
    }
    
    
    private func trafficLight() {
        buttonTitle = "NEXT"
        let dark: Double = 0.3
        let light: Double = 1
        
        if redTurnLight == yellowTurnLight {
            greenTurnLight = dark
            redTurnLight = light
        } else if redTurnLight == light {
            redTurnLight = dark
            yellowTurnLight = light
        } else if yellowTurnLight == light {
            yellowTurnLight = dark
            greenTurnLight = light
        }
        
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



