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
            Section(
                header: Text("ABOUT THE APP"),
                footer:HStack{
                       Spacer()
                       Text("Copyright © Allright reserved.")
                       Spacer()
                }.padding(.vertical, 8)){
                    //BASIC LABELED CONTENT
                      //LabeledContent("Application", value: "HIKE")
                    //ADVANCED LABELED CONTENT
                    CustomListrow(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowIconColor: .blue)
                    CustomListrow(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, ipadOS", rowIconColor: .yellow)
                    CustomListrow(rowLabel: "Technology", rowIcon: "swift", rowContent: "SWIFT", rowIconColor: .orange)
                    CustomListrow(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowIconColor: .purple)
                    CustomListrow(rowLabel: "Developer", rowIcon: "curlybraces.square.fill", rowContent: "daniele-pipino", rowIconColor: .mint)
                    CustomListrow(rowLabel: "Website", rowIcon: "globe", rowIconColor: .blue, rowlinkLabel: "in/daniele-pipino", rowlinkDestination: "https://www.google.com")
                    
            }

        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
