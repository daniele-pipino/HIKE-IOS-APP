//
//  CustomListrow.swift
//  HIKE
//
//  Created by Daniele Pipino on 24/08/23.
//

import SwiftUI

struct CustomListrow: View {
    
    //MARK: PROPERTIES
    @State var rowLabel:String
    @State var rowIcon:String
    @State var rowContent:String? = nil
    @State var rowIconColor:Color
    @State var rowlinkLabel:String? = nil
    @State var rowlinkDestination:String? = nil



    //MARK: UI
    var body: some View {
        LabeledContent{
            //Content
            if rowContent != nil {
                Text(rowContent!).foregroundColor(.primary).fontWeight(.heavy)
            }else if(rowlinkLabel != nil && rowlinkDestination != nil){
                Link(rowlinkLabel!, destination: URL(string: rowlinkDestination!)!).foregroundColor(.pink).fontWeight(.heavy)
            }
            else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }label: {
             //Label
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8).frame(width: 30, height: 30).foregroundColor(rowIconColor)
                    Image(systemName: rowIcon).foregroundColor(.white).fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

struct CustomListrow_Previews: PreviewProvider {
    static var previews: some View {
        List() {
            CustomListrow(rowLabel: "Label",
                          rowIcon: "apps.iphone",
                          rowContent: nil,
                          rowIconColor: .blue,
                          rowlinkLabel: "Google",
                          rowlinkDestination: "https://www.google.com"
            )
        }
    }
}
