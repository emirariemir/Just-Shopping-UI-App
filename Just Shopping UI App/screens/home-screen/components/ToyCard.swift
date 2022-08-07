//
//  ToyCard.swift
//  Just Shopping UI App
//
//  Created by Emir on 7.08.2022.
//

import SwiftUI

struct ToyCard: View {
    var imageName: String
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .cornerRadius(15)
                .padding()
                .frame(width: 200, height: 200)
                .shadow(color: Color("Dark Color").opacity(0.2), radius: 6, x: 0, y: 5)
            Text("Name of Toy")
                .padding(.top, 5)
                .padding(.bottom, 8)
                .font(.custom("Merriweather-Bold", size: 20))
            HStack {
                Text("Point")
                    .font(.custom("Merriweather-Regular", size: 15))
                Spacer()
                Text("Price")
                    .font(.custom("Merriweather-Regular", size: 15))
            }
        }
        .padding()
        .background(Color.white)
        .frame(width: 200)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.15), radius: 6, x: 0, y: 10)
        .padding(.bottom)
    }
}

struct ToyCard_Previews: PreviewProvider {
    static var previews: some View {
        ToyCard(imageName: "icons8-person-30")
    }
}
