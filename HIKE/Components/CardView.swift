//
//  CardView.swift
//  HIKE
//
//  Created by Daniele Pipino on 23/08/23.
//

import SwiftUI

struct CardView: View {
    //MARK: Variables
    @State private var imageNumber:Int = 1
    @State private var randomNumber:Int = 1
    @State private var isShowingSheet:Bool = false
    
    //MARK: Random number generator function
    
    func randomImage(){
        repeat{
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
            imageNumber = randomNumber
    }
    
    //MARK: Component UI
    var body: some View {
        ZStack {
            BackgroundView()
            // - : Card Content
            VStack {
                // - : Card Header
                VStack(alignment: .leading) {
                    // MARK: - MAIN TITLE
                    HStack{
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 39))
                            .foregroundStyle(LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                        Button{
                            // ACTION
                            isShowingSheet.toggle()
                        }label:{
                            // Style and aspect
                            CustomButton()
                        }.sheet(isPresented: $isShowingSheet){
                            SettingsView()
                            .presentationDetents(
                                // medium: starts at 50% and adding large it can be dragged on 100%, we can also add a custom number
                                [.medium, .large]
                            )
                            .presentationDragIndicator(.visible)
                        }
                    }
                        // MARK: - SUBTITLE
                        Text("Fun and enjoyable activities for friends and family")
                            .multilineTextAlignment(.leading)
                            .italic()
                            .foregroundColor(.customGrayMedium)
                    }.padding(.horizontal, 20)
                    // MARK: Card Body
                    ZStack{
                        CustomGradientCircle()
                        Image("image-\(imageNumber)").resizable().scaledToFit().animation(.default, value: imageNumber)
                    }
                    //MARK: Card Footer
                    Button{
                        //ACTION
                        randomImage()
                    }label: {
                        Text("Explore More").font(.title2).fontWeight(.heavy).foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
                    }.buttonStyle(GradientButton())
                }
            }.frame(width: 320, height: 570)
            
        }
    }
    
    struct CardView_Previews: PreviewProvider {
        static var previews: some View {
            CardView()
        }
    }
