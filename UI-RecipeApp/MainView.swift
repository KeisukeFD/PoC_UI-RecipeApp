//
//  MainView.swift
//  UI-RecipeApp
//
//  Created by Valentin Malissen on 2020-07-17.
//

import SwiftUI

struct MainView: View {

    var body: some View {
        GeometryReader { geo in
            VStack {
                Menu()
                    .padding(.bottom)
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(bundles, id: \.self.title) { recipe in
                        Card(recipeBundle: recipe)
                    }
                }
                Spacer()
            }.padding()
            .navigationBarTitle(Text(""), displayMode: .inline)
            .navigationBarItems(leading:
                HStack {
                    Image("menu")
                    Spacer()
                    Image("logo")
                        .imageScale(.large)
                    Spacer()
                    Image("search")
                }.padding().frame(width: geo.size.width)
            )
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
