//
//  PurchaseView.swift
//  test
//
//  Created by Sachithra Udayanga on 22/6/24.
//

import SwiftUI

struct PurchaseView: View {
    
    var monthlyPurchaseItem: IAPItem
    var yearlyPurchaseItem: IAPItem
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Image("purchase_image")
                    .padding(.leading, 22)
                    .padding(.trailing, 22)
                Text("Get unlimited access!")
                    .font(.custom("AvenirNext-Bold", size: 39))
                    .foregroundColor(Color("primary_text_color"))
                    .multilineTextAlignment(.center)
                HStack {
                    PurchaseItem(purchaseItem: monthlyPurchaseItem)
                    PurchaseItem(purchaseItem: yearlyPurchaseItem)
                }.padding(.leading, 22)
                    .padding(.trailing, 22)
                    .frame(height: 136)
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Go Premium")
                        .frame(width: 191, height: 58)
                        .font(.custom("AvenirNext-Heavy", size: 18))
                        .foregroundColor(Color("primary_button_text_color"))
                        .background(Color("primary_button_color"))
                        .cornerRadius(8)
                        .padding(.bottom, 30)
                }
                
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }.background(Color("primary_background_color"))
            .toolbar(.hidden)
    }
}

#Preview {
    let monthlyPurchase = IAPItem(purchaseType: "Monthly",
                                  costPerMonth: "$11.99",
                                  costPerYear: "$143.99",
                                  typeColor: "purchase_item_blue")
    let yearlyPurchase = IAPItem(purchaseType: "Yearly",
                                  costPerMonth: "$4.99",
                                  costPerYear: "$59.99",
                                  typeColor: "purchase_item_pink")
    return PurchaseView(monthlyPurchaseItem: monthlyPurchase,
                        yearlyPurchaseItem: yearlyPurchase)
}
