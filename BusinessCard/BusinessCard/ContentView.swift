//
//  ContentView.swift
//  BusinessCard
//
//  Created by James Militante on 2020-01-11.
//  Copyright © 2020 James Militante. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("fsociety")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.red, lineWidth: 5))
                Text("Mr. Robot")
                    .font(Font.custom("Roboto-BoldItalic", size: 40))
                    .bold()
                    .foregroundColor(.red)
                Text("fsociety")
                    .foregroundColor(.white)
                    .font(Font.custom("Asset-Regular", size: 25))
                Divider()
                InfoView(text: "+1 123 456 7890", imageName: "phone.fill")
                InfoView(text: "mr_robot@fsociety.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


