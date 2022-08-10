//
//  HomeScreen.swift
//  Just Shopping UI App
//
//  Created by Emir on 7.08.2022.
//

import SwiftUI

struct HomeScreen: View {
    @State private var selectedIndex: Int = 0
    private let toyList = ["Action Figure", "YoYo", "RC Toys", "Lego", "Puzzle", "Collectibles"]
    
    @State var isActive: Bool = false
    
    var body: some View {
        NavigationView {
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
                                    NavigationLink(destination: ToyDetailScreen(rootPopView: self.$isActive).navigationBarHidden(true), isActive: self.$isActive) {
                                        ToyCard(imageName: "rock-n-roll-monkey-LEPhZkQbUrk-unsplash")
                                    }
                                    .isDetailLink(false)
                                    .foregroundColor(Color.black)
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
            }.navigationBarHidden(true)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
