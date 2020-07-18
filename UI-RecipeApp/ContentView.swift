//
//  ContentView.swift
//  UI-RecipeApp
//
//  Created by Valentin Malissen on 2020-07-17.
//

import SwiftUI

enum Tab {
    case Home, Recipe, Photo, Chef, Profile
}


struct ContentView: View {
    @State private var selectionTab: Tab = Tab.Home

    var body: some View {
        TabView(selection: $selectionTab) {
            TabItemView(image: "home", tag: Tab.Home) {
                MainView()
            }
            TabItemView(image: "list", tag: Tab.Recipe) {
                Text("List Recipes")
            }
            TabItemView(image: "camera", tag: Tab.Photo) {
                Text("Photos")
            }
            TabItemView(image: "chef_nav", tag: Tab.Chef) {
                Text("Chefs")
            }
            TabItemView(image: "user", tag: Tab.Profile) {
                ProfileView()
            }
        }.accentColor(Color("greenAccentColor"))
        .onAppear {
            setupTheme()
        }
    }
}

func setupTheme() {
    let appearence = UINavigationBarAppearance()
    appearence.backgroundColor = .white
    appearence.shadowColor = UIColor.clear
    UINavigationBar.appearance().standardAppearance = appearence
    
    let tabBarAppearance = UITabBarAppearance()
    tabBarAppearance.backgroundColor = .white
    tabBarAppearance.shadowColor = UIColor.clear
    
    UITabBar.appearance().standardAppearance = tabBarAppearance
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}
