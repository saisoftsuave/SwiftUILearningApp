//
//  FramworkDetailedScreen.swift
//  SwiftUILearningApp
//
//  Created by softsuave on 13/03/25.
//

import Foundation
import SwiftUI


struct FramworkDetailedScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @State var isShowingSafariView : Bool = false
    
    var framework : Framework
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button{
                    dismiss()
                }label: {
                    Image(systemName: "xmark").imageScale(.large).padding()
                }.frame(alignment: .leading)
            }.padding(.horizontal)
            Spacer()
            FramworkGridView(framework: framework)
            Text(framework.description).font(.body).padding()
            Spacer()
            Button{
                isShowingSafariView = true
            }label: {
                Text("learn more")
            }.frame(width: 280, height: 40).background(Color.blue).foregroundColor(.white).cornerRadius(10)
        }.navigationBarBackButtonHidden(true).sheet(isPresented: $isShowingSafariView){
            SafariView(url: URL(string:framework.urlString)!)
        }
    }
}




#Preview {
    FramworkDetailedScreen(framework: MockData.sampleFramework)
}
