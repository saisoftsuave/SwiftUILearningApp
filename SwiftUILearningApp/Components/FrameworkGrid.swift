//
//  FrameworkGrid.swift
//  SwiftUILearningApp
//
//  Created by softsuave on 13/03/25.
//

import SwiftUI
import Foundation




struct FrameworkGrid: View {
    var columns: [GridItem] = [
        GridItem(
            .flexible()
        ),
        GridItem(
            .flexible()
        ),
        GridItem(
            .flexible()
        )
    ]
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(
                    columns: columns
                ){
                    ForEach(
                        MockData.frameworks,
                        id: \.self
                    ){framework in
                        NavigationLink(value: framework) {
                            FramworkGridView(
                                framework: framework
                            )
                        }
                    }
                }
            }.navigationTitle("Frameworks").navigationDestination(for: Framework.self){framework in
                FramworkDetailedScreen(framework: framework)
            }
        }
    }
}



#Preview {
    FrameworkGrid()
}
