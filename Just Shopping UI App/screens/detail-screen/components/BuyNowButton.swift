//
//  BuyNowButton.swift
//  Just Shopping UI App
//
//  Created by Emir on 10.08.2022.
//

import SwiftUI

struct BuyNowButton: View {
    var body: some View {
        Button(action: {}) {
            Text("BUY NOW!")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.white)
                .padding()
                .background(Color("Dark Color"))
                .cornerRadius(55)
        }
    }
}

struct BuyNowButton_Previews: PreviewProvider {
    static var previews: some View {
        BuyNowButton()
    }
}
