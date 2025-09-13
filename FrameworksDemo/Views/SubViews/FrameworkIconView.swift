//
//  FrameworkIconView.swift
//  FrameworksDemo
//
//  Created by Ranjan sharma on 13/09/25.
//

import SwiftUI

struct FrameworkIconView: View {
    let framework: Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .scaledToFit()
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                
        }
    }
}
