//
//  GFMTextField.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 18.04.22.
//

import SwiftUI

struct GFMTextField: View {
    var placeholderText: String
    var textInput: Binding<String>

    var body: some View {
        TextField(placeholderText, text: textInput)
//            .textFieldStyle(.roundedBorder)
            .disableAutocorrection(true)
            .font(.title2)
            .frame(width: 260, height: 50)
            .background(RoundedRectangle(cornerRadius: 10).strokeBorder(.gray))
//            .font(.system(size: 20, weight: .bold))
//            .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(.gray, style: StrokeStyle(lineWidth: 2)))
            .padding()
            .scaledToFit()
            .multilineTextAlignment(.center)
    }
}

struct GFMTextField_Previews: PreviewProvider {
    static var previews: some View {
        GFMTextField(placeholderText: "Enter a Username", textInput: .constant(""))
    }
}
