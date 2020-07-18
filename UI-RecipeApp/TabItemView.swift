//
//  TabItemView.swift
//  UI-RecipeApp
//
//  Created by Valentin Malissen on 2020-07-18.
//

import SwiftUI

struct TabItemView<Content>: View where Content: View{
    var image: String
    var tag: Tab
    var content: Content
    
    init(image: String, tag: Tab, @ViewBuilder content: () -> Content) {
        self.image = image
        self.tag = tag
        self.content = content()
    }
    
    var body: some View {
        NavigationView {
            self.content
        }.tabItem {
            Image(self.image)
        }
        .tag(tag)
    }
}
