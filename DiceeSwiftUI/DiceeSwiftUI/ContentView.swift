//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by James Militante on 2020-01-11.
//  Copyright © 2020 James Militante. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // @State allows variables in struct to be mutable
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceView(num: leftDiceNumber)
                    DiceView(num: rightDiceNumber)
                }
                .padding(.horizontal)
                
            Spacer()
            
            Button(action:{
                self.leftDiceNumber = Int.random(in: 1...6)
                self.rightDiceNumber = Int.random(in: 1...6)
            }) {
                Text("Roll")
                    .font(.system(size: 50))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.horizontal)
            }
            .background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let num: Int
    var body: some View {
        Image("dice\(num)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
