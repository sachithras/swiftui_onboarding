//
//  PurchaseItem.swift
//  test
//
//  Created by Sachithra Udayanga on 23/6/24.
//

import SwiftUI

struct PurchaseItem: View {
    @State private var textWidth: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading, content: {
                VStack(alignment: .leading, spacing: 7, content: {
                    Text("$11.99")
                        .font(.custom("AvenirNext-Bold", size: 24))
                        .foregroundStyle(Color("primary_text_color"))
                        .padding(.top, 22)
                    VStack(alignment: .leading, spacing: 7, content: {
                        HStack(spacing: 0, content: {
                            Text("$11.99").foregroundStyle(Color("tertiary_text_color"))
                            Text(" per month").foregroundStyle(Color("secondary_text_color"))
                        })
                        HStack(spacing: 0, content: {
                            Text("$143.99").foregroundStyle(Color("tertiary_text_color"))
                            Text(" per year").foregroundStyle(Color("secondary_text_color"))
                        })
                    }).font(.custom("AvenirNext-Bold", size: 13))
                }).frame(maxWidth: .infinity, maxHeight: .infinity).background(Color("purchase_item_background"))
                    .cornerRadius(12)
                    .padding(.top, 9)
                VStack {
                    HStack(content: {
                        Spacer()
                        Text("Monthly").font(.custom("AvenirNext-Bold", size: 10))
                            .padding([.leading, .trailing], 8)
                            .padding([.top, .bottom], 4)
                            .foregroundStyle(.white)
                            .background(Color("purchase_item_blue"))
                            .cornerRadius(5)
                    }).padding(.trailing, 8)
                    Spacer()
                }
                Spacer()
            }).frame(width: geometry.size.width, 
                     height: geometry.size.height)
        }
    }
}

#Preview {
    PurchaseItem()
}
