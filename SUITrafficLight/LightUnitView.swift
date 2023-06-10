//
//  LightUnitView.swift
//  SUITrafficLight
//
//  Created by Danila Kornev on 10.06.2023.
//

import SwiftUI

struct LightUnitView: View {
    let color: Color
    let alpha: Double
    
    var body: some View {
        
        Circle()
            .foregroundColor(color)
            .opacity(alpha)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .frame(width: 150, height: 150)
            .shadow(color: color, radius: 30)
            
    }
}

struct LightUnitView_Previews: PreviewProvider {
    static var previews: some View {
        LightUnitView(color: .red, alpha: 0.3)
    }
}
