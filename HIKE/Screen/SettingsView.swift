//
//  SettingsView.swift
//  HIKE
//
//  Created by Daniele Pipino on 24/08/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            //MARK: SECTION HEADER
            Section{
                HStack () {
                    Spacer()
                    Image(systemName: "laurel.leading").font(.system(size: 66, weight: .black))
                    VStack(spacing: -10) {
                        Text("HIKE").font(.system(size: 66, weight: .black))
                        Text("Editor's choice").fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing").font(.system(size: 66, weight: .black))
                    Spacer()
                }.foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)).padding(.top, 8)
                VStack(spacing:8){
                    Text("Where can you find \n perfect tracks ?").font(.title2).fontWeight(.heavy)
                    
                    Text("The jike which looks gorgeous in photos but even better once you are actually there. The hike that you hope to do again someday. \n Find the best day hikes in the app.")
                        .font(.footnote).italic()
                    Text("Dust off the boots! It's time for a walk.").fontWeight(.heavy).foregroundColor(.customGrayMedium)

                }.multilineTextAlignment(.center).padding(.bottom, 16).frame(maxWidth: .infinity)
            }.listRowSeparator(.hidden)//:HEADER
            

            //MARK: SECTION ICONS
            //MARK: SECTION ABOUT

        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
