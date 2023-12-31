//
//  ContentView.swift
//  Linterna2
//
//  Created by iOS Development Lab FI UNAM on 02/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var lamp = false
    @State var face = false
    
    var body: some View {
        VStack {
            Text("Ejemplo de botones")
                .font(.title)
            ZStack {
                Color(lamp ? .black: .white)
                Button(action: {
                    lamp.toggle()
                }){
                    Text("encender")
                }
            }
            ZStack {
                Button(action: {
                    face.toggle()
                }){
                    Text(face ? "🐶":"🐱")
                        .font(.system(size: 150))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
