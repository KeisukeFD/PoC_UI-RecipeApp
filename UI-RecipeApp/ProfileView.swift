//
//  ProfileView.swift
//  UI-RecipeApp
//
//  Created by Valentin Malissen on 2020-07-18.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                HStack {
                    Spacer()
                    VStack {
                        Text("John Doe")
                            .font(.title2)
                        Spacer().frame(height: 10)
                        Text("johndoe01@gmail.com")
                            .font(.system(size: 10))
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                Spacer().frame(height: 30)
                
                ForEach(profileMenuList, id: \.self.title) { menu in
                    HStack {
                        Image(menu.icon)
                            .renderingMode(.original)
                        Text(menu.title)
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding()
                }

            }.offset(y: 190)
            .navigationBarTitle(Text("Profile"), displayMode: .inline)
            .navigationBarItems(leading: HeadingProfile()
                                    .frame(width: geo.size.width, height: 200)
                                    .offset(x:-1, y: 30)
            )
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
