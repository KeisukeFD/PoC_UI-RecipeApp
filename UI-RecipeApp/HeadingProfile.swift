//
//  HeadingProfile.swift
//  UI-RecipeApp
//
//  Created by Valentin Malissen on 2020-07-18.
//

import SwiftUI

struct HeaderShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { p in
            p.move(to: CGPoint(x: 0, y: 0))
            p.addLine(to: CGPoint(x: rect.width, y: 0))
            p.addLine(to: CGPoint(x: rect.width, y: rect.height/1.5))
            p.addQuadCurve(to: CGPoint(x: 0, y: rect.height/1.5), control: CGPoint(x: rect.width/2, y: rect.height/0.9))
        }
    }
}

struct HeadingProfile: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                HeaderShape()
                    .fill(Color("greenAccentColor"))
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image("back")
                            .foregroundColor(.white)
                    })
                    Spacer()
                    Text("Profile")
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("EDIT")
                            .bold()
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    })
                }.padding()
                .offset(y: -40)
                
                Image("pic")
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 6).fill(Color.white))
                    .offset(y: 90)
            }
        }
    }
}
