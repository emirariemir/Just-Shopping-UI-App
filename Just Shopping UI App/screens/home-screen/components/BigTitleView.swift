//
//  BigTitleView.swift
//  Just Shopping UI App
//
//  Created by Emir on 7.08.2022.
//

import SwiftUI

struct BigTitleView: View {
    var body: some View {
        Text("Find the best \nsuper ")
            .font(.custom("Merriweather-Regular", size: 30))
            .foregroundColor(Color("Background Color"))
        + Text ("Toys!")
            .font(.custom("Merriweather-Bold", size: 30))
            .foregroundColor(Color("Background Color"))
    }
}

struct BigTitleView_Previews: PreviewProvider {
    static var previews: some View {
        BigTitleView()
    }
}
