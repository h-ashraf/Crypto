//
//  ContentView.swift
//  Crypto
//
//  Created by Hamad Ashraf on 05/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                Text("Accent Color")
                
                Text("Secondary Text Color")
                
                Text("Red Color")
                
                Text("Green Color")
            }
        }
    }
}

#Preview {
    ContentView()
}
