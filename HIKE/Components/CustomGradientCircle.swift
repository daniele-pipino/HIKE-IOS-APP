//
//  CustomGradientCircle.swift
//  HIKE
//
//  Created by Daniele Pipino on 24/08/23.
//

import SwiftUI

struct CustomGradientCircle: View {
    //MARK: LOGIC
    @State private var isAnimateGradient: Bool = false
    
    //MARK: UI
    var body: some View {
        Circle()
            .fill(
                LinearGradient(
                    colors:
                        [.customIndigoMedium,
                         .customSalmonLight],
                    startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                    endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                )
            ).onAppear(){
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                    isAnimateGradient.toggle()
                }
            }
            .frame(width: 256, height: 256)
    }
}

struct CustomGradientCircle_Previews: PreviewProvider {
    static var previews: some View {
        CustomGradientCircle()
    }
}
