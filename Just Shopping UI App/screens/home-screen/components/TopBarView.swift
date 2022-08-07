//
//  TopBarView.swift
//  Just Shopping UI App
//
//  Created by Emir on 7.08.2022.
//

import SwiftUI

struct TopBarView: View {
    var body: some View {
        HStack{
            Button (action: {}) {
                Image("icons8-menu-60")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(15)
            } // Menu button
            Spacer()
            Button (action: {}) {
                Image("rock-n-roll-monkey-LEPhZkQbUrk-unsplash")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(15)
            } // Profile button
        }.padding(.horizontal)
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView()
    }
}
