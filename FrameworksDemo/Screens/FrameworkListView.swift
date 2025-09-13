//
//  ContentView.swift
//  FrameworksDemo
//
//  Created by Ranjan sharma on 13/09/25.
//

import SwiftUI

struct FrameworkListView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkIconView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .navigationTitle("Frameworks")
                .sheet(isPresented: $viewModel.isShowDetailView){
                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowDetailView: $viewModel.isShowDetailView)
                }
            }
        }
        
    }
}

#Preview {
    FrameworkListView()
}
