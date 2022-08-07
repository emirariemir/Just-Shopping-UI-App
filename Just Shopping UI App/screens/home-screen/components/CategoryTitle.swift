//
//  CategoryTitle.swift
//  Just Shopping UI App
//
//  Created by Emir on 7.08.2022.
//

import SwiftUI

struct CategoryTitle: View {
    var text: String
    var isActive: Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(text)
                .font(.custom("Merriweather-Bold", size: 18))
                .foregroundColor(Color("Background Color"))
            if(isActive) {
                Color("Background Color")
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
        }
    }
}

struct CategoryTitle_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTitle()
    }
}
