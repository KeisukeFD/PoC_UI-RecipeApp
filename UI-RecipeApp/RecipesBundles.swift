//
//  RecipesBundles.swift
//  UI-RecipeApp
//
//  Created by Valentin Malissen on 2020-07-18.
//

import SwiftUI

struct RecipeBundle {
    var title: String
    var subtitle: String
    var recipes: Int
    var chefs: Int
    var imageName: String
    var color: Color
}

let bundles = [
    RecipeBundle(title: "Cook Something New Everyday", subtitle: "New and tasty recipes every minute", recipes: 95, chefs: 16, imageName: "cook_new", color: Color(red: 216/255, green: 45/255, blue: 64/255)),
    RecipeBundle(title: "Best of 2020", subtitle: "Cook recipes for special occasions", recipes: 26, chefs: 8, imageName: "best_2020", color: Color(red: 144/255, green: 175/255, blue: 23/255)),
    RecipeBundle(title: "Food Court", subtitle: "What's your favorite food dish make it now", recipes: 43, chefs: 10, imageName: "food_court", color: Color(red: 45/255, green: 187/255, blue: 216/255))
]
