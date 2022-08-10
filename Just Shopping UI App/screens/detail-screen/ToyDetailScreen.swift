//
//  ToyDetailScreen.swift
//  Just Shopping UI App
//
//  Created by Emir on 10.08.2022.
//

import SwiftUI

struct ToyDetailScreen: View {
    @Binding var rootPopView: Bool
    
    var body: some View {
        ZStack{
            Color("Second Background Color").ignoresSafeArea()
            VStack {
                Image("rock-n-roll-monkey-LEPhZkQbUrk-unsplash")
                    .resizable()
                    .frame(width: 350, height: 350, alignment: .center)
                    .cornerRadius(22)
                    .shadow(color: Color.black.opacity(0.2), radius: 7, x: 0, y: 10)
                    .ignoresSafeArea()
                VStack {
                    VStack (alignment: .leading) {
                        Text("Crazy Dancing Robot")
                            .font(.custom("Merriweather-Bold", size: 25))
                            .fontWeight(.bold)
                            .padding(.leading)
                            .padding(.top)
                        HStack (spacing: 5) {
                            ForEach(0..<5) { i in
                                Image("icons8-scanner-30")
                                    .resizable()
                                    .frame(width: 40, height: 40, alignment: .center)
                            }
                            Text("(49)")
                                .font(.title3)
                            Spacer()
                                .frame(height: 22)
                        }.padding(.leading)
                        
                        VStack {
                            VStack (alignment: .leading) {
                                Text("Description")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .padding(.top)
                                    .padding(.bottom, 3)
                                Text("This toy comes with a lot of features that can boost your emotions to the highest level possible. You have to have this robot toy if you are into robot stuff.")
                            }
                            
                            BuyNowButton()
                            
                            Button(action: {rootPopView = false}) {
                                Text("Cancel")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(Color.white)
                                    .padding()
                                    .background(Color("Dark Color"))
                                    .cornerRadius(55)
                            }.padding(.top, 5)
                            
                        }.padding(.horizontal)
                    }
                }
                //Spacer()
            }
        }
    }
}
