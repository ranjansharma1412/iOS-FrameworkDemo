//
//  ModalCloseButton.swift
//  FrameworksDemo
//
//  Created by Ranjan sharma on 13/09/25.
//

import SwiftUI

struct ModalCloseButton: View {
    @Binding var isShowDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowDetailView = false
            }label: {
                Image(systemName: "xmark")
                    .imageScale(.large)
                    .foregroundColor(Color(.label))
            }.padding()
        }
    }
}
