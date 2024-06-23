//
//  LandingPage.swift
//  test
//
//  Created by Sachithra Udayanga on 22/6/24.
//

import SwiftUI

struct LandingPage: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Image("landing_image")
                    .padding(.leading, 22)
                    .padding(.trailing, 22)
                VStack {
                    Text("Learn at home!")
                        .font(.custom("AvenirNext-Bold", size: 39))
                        .foregroundColor(Color("primary_text_color"))
                        .padding(.bottom, 2)
                    Text("efficiently and effectively")
                        .font(.custom("AvenirNext-Heavy", size: 17))
                        .foregroundColor(Color("secondary_text_color"))
                }.padding(.top, 70)
                    .padding()
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Start Now")
                        .frame(width: 186, height: 58)
                        .font(.custom("AvenirNext-Heavy", size: 18))
                        .foregroundColor(Color("primary_button_text_color"))
                        .background(Color("primary_button_color"))
                        .cornerRadius(8)
                        .padding(.bottom, 50)
                }
                
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }.background(Color("primary_background_color"))
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
