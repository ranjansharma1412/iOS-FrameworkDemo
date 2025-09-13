//
//  FrameworkGridViewModel.swift
//  FrameworksDemo
//
//  Created by Ranjan sharma on 13/09/25.
//
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowDetailView = true
        }
    }
    @Published var isShowDetailView: Bool = false
    var columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
}
