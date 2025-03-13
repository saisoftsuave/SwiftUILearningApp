//
//  FrameworkGrid.swift
//  SwiftUILearningApp
//
//  Created by softsuave on 13/03/25.
//

import SwiftUI
import Foundation




struct FrameworkGrid: View {
    var columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    @State var selectedFramework : Framework? = nil
    
    var body: some View {
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks, id: \.self){framework in
//                        NavigationLink(destination:   FramworkDetailedScreen(framework: framework)){
//                            FramworkGridView(framework: framework)
//                        }
                        FramworkGridView(framework: framework).onTapGesture {
                            selectedFramework = framework
                        }
                    }
                }.ignoresSafeArea().navigationTitle(Text("Frameworks"))
            }.sheet(item: $selectedFramework, content: { framework in
                FramworkDetailedScreen(framework: framework)
            })
    }
}



#Preview {
    FrameworkGrid()
}
