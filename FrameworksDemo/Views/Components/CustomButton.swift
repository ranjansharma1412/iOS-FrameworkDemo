//
//  CustomButton.swift
//  FrameworksDemo
//
//  Created by Ranjan sharma on 13/09/25.
//

import SwiftUI

struct CustomButton: View {
    let buttonTitle: String
    var body: some View {
        Text(buttonTitle)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.red)
            .cornerRadius(25)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)
        
    }
}
