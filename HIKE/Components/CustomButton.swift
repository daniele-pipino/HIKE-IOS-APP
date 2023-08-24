//
//  CustomButton.swift
//  HIKE
//
//  Created by Daniele Pipino on 23/08/23.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        ZStack{
            Circle().fill(
                .linearGradient(
                    colors: [
                        .white,
                        .customGreenLight,
                        .customGreenDark
                    ],
                    startPoint: .top, endPoint: .bottom)
            )
            Circle().stroke(LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom),lineWidth: 4)
            Image(systemName: "figure.hiking").fontWeight(.black).font(.system(size: 30)).foregroundStyle(LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
        }.frame(width: 58, height: 58)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton().previewLayout(.sizeThatFits).padding()
    }
}
