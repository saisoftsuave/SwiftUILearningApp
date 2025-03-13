//
//  ContentView.swift
//  SwiftUILearningApp
//
//  Created by softsuave on 13/03/25.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
        NavigationView {
            FrameworkGrid()
        }

    }
}

#Preview {
    ContentView()
}


class ViewModel: ObservableObject {
    @Published var text : String = "test"
}

struct Test: View {
    @State var viewModel = ViewModel()
    var body: some View {
        Text("Hello, World!")
    }
}
