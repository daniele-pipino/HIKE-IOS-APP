//
//  BackgroundView.swift
//  HIKE
//
//  Created by Daniele Pipino on 23/08/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            // DEPTH
            Color.customGreenDark
                .cornerRadius(40).offset(y: 12)
            
            // LIGHT
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.5)
            
            // SURFACE
            
            LinearGradient(colors:
                            [.customGreenLight,
                             .customGreenMedium],
                           startPoint: .top, endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView().padding()
    }
}
