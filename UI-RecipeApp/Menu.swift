//
//  Menu.swift
//  UI-RecipeApp
//
//  Created by Valentin Malissen on 2020-07-17.
//

import SwiftUI


enum MenuItems: String, CaseIterable {
    case All = "All"
    case Indian = "Indian"
    case Italian = "Italian"
    case Mexican = "Mexican"
    case Chinese = "Chinese"
}


struct MenuLabelModifier: ViewModifier {
    func body(content: Content) -> some View {
            content
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .padding(.top, 5)
                .padding(.bottom, 5)
                .foregroundColor(Color("greenAccentColor").opacity(0.6))
        }
}


struct ActiveLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color("greenAccentColor"))
            .background(Color("menuBackColor"))
            .cornerRadius(20)
    }
}


struct Menu: View {
    @State var active = MenuItems.All
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(MenuItems.allCases, id: \.self) { item in
                    if( self.active == item) {
                        Text(item.rawValue)
                            .bold()
                            .modifier(MenuLabelModifier())
                            .modifier(ActiveLabel())
                    } else {
                        Text(item.rawValue)
                            .bold()
                            .modifier(MenuLabelModifier())
                    }
                }
            }.padding()
            .padding(.top, -10)
            .padding(.bottom, -10)
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
