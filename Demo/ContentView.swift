//
//  ContentView.swift
//  Demo
//
//  Created by Simran Sharma on 13/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var isHi = true
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .shadow(radius: 7)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack {
                Text(isHi ? "Hi" : "Hi Simmi")
                Image(systemName: isHi ? "globe" : "heart.fill")
                    .imageScale(.large)
                    .foregroundColor(isHi ? .blue : .red)
            }
            .padding()
            Button (
                action: {
                    isHi.toggle()
                }
            ) {
                Text("Toggle greeting")
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
