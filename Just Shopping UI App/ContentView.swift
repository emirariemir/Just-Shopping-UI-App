//
//  ContentView.swift
//  Just Shopping UI App
//
//  Created by Emir on 7.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedIndex: Int = 0
    private let toyList = ["Action Figure", "YoYo", "RC Toys", "Lego", "Puzzle", "Collectibles"]
    
    var body: some View {
        ZStack {
            Color("Second Background Color").ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                VStack (alignment: .leading) {
                    TopBarView()
                    
                    BigTitleView()
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                    
                    SearchFieldView()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            ForEach(0..<toyList.count) { i in
                                CategoryTitle(text: toyList[i], isActive: i == selectedIndex)
                                    .onTapGesture {
                                        selectedIndex = i
                                    }
                            }
                        }.padding()
                    } // Category scroll view
                    
                    Text("Popular")
                        .padding(.horizontal)
                        .font(.custom("Merriweather-Bold", size: 25))
                        .foregroundColor(Color("Background Color"))
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 26) {
                            ForEach(0..<5) {i in
                                ToyCard(imageName: "rock-n-roll-monkey-LEPhZkQbUrk-unsplash")
                            }
                        }.padding(.horizontal)
                    }
                    
                    Text("Best")
                        .padding(.horizontal)
                        .font(.custom("Merriweather-Bold", size: 25))
                        .foregroundColor(Color("Background Color"))
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 26) {
                            ForEach(0..<5) {i in
                                ToyCard(imageName: "mockup-graphics-aUkYaG12Dgs-unsplash")
                                    .padding(.bottom, 65)
                            }
                        }.padding(.horizontal)
                    }
                }
            }
            HStack {
                Image("icons8-home-30")
                    .frame(maxWidth: .infinity)
                Image("icons8-paper-plane-30")
                    .frame(maxWidth: .infinity)
                Image("icons8-scanner-30")
                    .frame(maxWidth: .infinity)
                Image("icons8-person-30")
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .background(Color.white)
            .clipShape(Capsule())
            .padding(.horizontal)
            .shadow(color: Color.black.opacity(0.45), radius: 7, x: 0, y: 8)
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
