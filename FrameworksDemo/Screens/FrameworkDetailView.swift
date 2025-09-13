//
//  FrameworkDetailView.swift
//  FrameworksDemo
//
//  Created by Ranjan sharma on 13/09/25.
//

import SwiftUI
struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowDetailView: Bool
    var body: some View {
        ModalCloseButton(isShowDetailView: $isShowDetailView)
        VStack {
            FrameworkIconView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
                .foregroundColor(Color(.label))
            Spacer().frame(height: 100)
            Button{
                print("Learn More")
            }label: {
                CustomButton(buttonTitle: "Learn More")
            }.padding()
        }.padding()
        Spacer()
    }
}
