//
//  ContentView.swift
//  SUITrafficLight
//
//  Created by Danila Kornev on 10.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redLightAlpha = 0.3
    @State private var yellowLightAlpha = 0.3
    @State private var greenLightAlpha = 0.3
    @State private var buttonText = "Start"
    
    var body: some View {
        VStack {
            LightUnitView(color: .red, alpha: redLightAlpha)
            LightUnitView(color: .yellow, alpha: yellowLightAlpha)
            LightUnitView(color: .green, alpha: greenLightAlpha)
            Spacer()
            Button {
                changeColor()
            } label: {
                Text(buttonText)
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .frame(width: 150, height: 50)
                    .background(.blue)
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 4))
                    
            }

        }
        .padding()
    }
    
    private func changeColor() {
        buttonText = "Next"
        if redLightAlpha == 1.0 {
            redLightAlpha = 0.3
            yellowLightAlpha = 1.0
        } else if yellowLightAlpha == 1.0 {
            yellowLightAlpha = 0.3
            greenLightAlpha = 1.0
        } else {
            greenLightAlpha = 0.3
            redLightAlpha = 1.0
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
