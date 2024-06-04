//
//  ContentView.swift
//  tavla
//
//  Created by zeynep altıparmak on 4.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var zarNumarasi = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(zarNumarasi)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .onTapGesture {
                    self.zarNumarasi = Int.random(in:1...6)
                }
            Text("Zar atmak için zara dokun")
                .font(.headline)
                .padding()
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
