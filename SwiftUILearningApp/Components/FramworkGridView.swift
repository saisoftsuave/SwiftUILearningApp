//
//  FramworkGridView.swift
//  SwiftUILearningApp
//
//  Created by softsuave on 13/03/25.
//


import Foundation
import SwiftUI

struct FramworkGridView: View {
    
    var framework : Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName).resizable().frame(width: 90, height: 90)
            Text(framework.imageName).font(.headline).scaledToFit().minimumScaleFactor(0.5)
        }
    }
}




#Preview {
    FramworkGridView(
        framework: MockData.sampleFramework
    )
}
