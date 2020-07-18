//
//  Card.swift
//  UI-RecipeApp
//
//  Created by Valentin Malissen on 2020-07-17.
//

import SwiftUI


struct Card: View {
    var recipeBundle: RecipeBundle
    
    var body: some View {
        ZStack {
            GeometryReader { geo in
                RoundedRectangle(cornerRadius: 30)
                    .fill(recipeBundle.color)

                VStack(alignment: .trailing) {
                    HStack { Spacer() }
                    Spacer()
                    Image("\(recipeBundle.imageName)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                    Spacer()
                }

                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(recipeBundle.title)
                                .font(.title)
                                .foregroundColor(.white)
                            
                            Spacer().frame(height: 10)
                            
                            Text(recipeBundle.subtitle)
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .opacity(0.6)
                        }.padding()
                        .padding(.bottom, -15)
                    }.frame(width: geo.size.width / 1.5)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Image("pot")
                            Text("\(recipeBundle.recipes) Recipes")
                                .foregroundColor(.white)
                        }

                        HStack {
                            Image("chef")
                            Text("\(recipeBundle.chefs) Chefs")
                                .foregroundColor(.white)
                        }
                    }.padding()
                }
            }
        }.frame(height: 240)
    }
}


struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(recipeBundle: bundles[2])
    }
}
