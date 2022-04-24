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
    var focusedTextField: FocusState<SearchFieldEnum?>.Binding

    var body: some View {
        TextField(placeholderText, text: textInput)
//            .textFieldStyle(.roundedBorder)
            .disableAutocorrection(true)
            .font(.title2)
            .frame(width: 260, height: 50)
            .background(RoundedRectangle(cornerRadius: 10).strokeBorder(.gray))
//            .font(.system(size: 20, weight: .bold))
//            .overlay(RoundedRectangle(cornerRadius:  10).strokeBorder(.gray, style: StrokeStyle(lineWidth: 2)))
            .scaledToFit()
            .multilineTextAlignment(.center)
            .focused(focusedTextField, equals: SearchFieldEnum.username)
            .submitLabel(.go)
            .onSubmit {
                print("Textfield input: \(textInput.wrappedValue)")
            }

    }
}

struct GFMTextField_Previews: PreviewProvider {
    @FocusState static var focusedTextField: SearchFieldEnum?

    static var previews: some View {
        GFMTextField(placeholderText: "Enter a Username",
                     textInput: .constant(""),
                     focusedTextField: $focusedTextField)
    }
}
