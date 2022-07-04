//
//  GFMProfileInfoView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 04.07.22.
//

import SwiftUI

struct GFMInfoView: View {
    // non-optionals because they exist in any way
    var label1: Text
    var label2: Text
    var imageSymbol1: String
    var imageSymbol2: String
    var number1: Int
    var number2: Int
    var buttonLabel: Text
    // optional
    var buttonColor: Color?

    var body: some View {
        GroupBox {
            VStack {
                HStack {
                    VStack {
                        Label {
                            label1
                        } icon: {
                            Image(systemName: imageSymbol1)
                        }
                        Text("\(number1)")
                    }
                    Spacer()

                    VStack {
                        Label {
                            label2
                        } icon: {
                            Image(systemName: imageSymbol2)
                        }
                        Text("\(number2)")
                    }
                }
                Button {
                    // action
                } label: {
                    buttonLabel
                        .frame(width: 300, height: 40)
                        .foregroundColor(.white)
                        .background(buttonColor)
                        .cornerRadius(8)
                }
                .foregroundColor(buttonColor)
                .padding(3)
            }
        }
        .font(.callout)
        .cornerRadius(16)
    }
}

struct GFMProfileInfoView_Previews: PreviewProvider {
    static var previews: some View {
        GFMInfoView(label1: Text("Public Repos"), label2: Text("Public Gists"), imageSymbol1: "folder", imageSymbol2: "text.alignleft", number1: 99, number2: 0, buttonLabel: Text("GitHub Profile"), buttonColor: .pink)
    }
}
