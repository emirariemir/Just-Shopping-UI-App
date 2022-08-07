//
//  SearchFieldView.swift
//  Just Shopping UI App
//
//  Created by Emir on 7.08.2022.
//

import SwiftUI

struct SearchFieldView: View {
    @State private var search: String = ""
    
    var body: some View {
        HStack {
            HStack {
                Image("icons8-search-30")
                    .padding(.trailing, 8)
                TextField("Search toy here", text: $search)
            } // Search field
            .padding()
            .background(Color.white)
            .cornerRadius(56)
            .padding(.trailing, 5)
            Button(action: {}) {
                Image("icons8-scanner-30")
                    .padding(.all, 15)
                    .background(Color("Primary Color"))
                    .cornerRadius(35)
            } // Scan button
        }.padding(.horizontal, 17)
    }
}

struct SearchFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFieldView()
    }
}
