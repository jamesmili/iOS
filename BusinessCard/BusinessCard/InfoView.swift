//
//  InfoView.swift
//  BusinessCard
//
//  Created by James Militante on 2020-01-11.
//  Copyright © 2020 James Militante. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.red)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(.white)
                    Text(text)
                        .foregroundColor(.white)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text:"Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
