//
//  Shapes1.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 24.07.2023.
//

import SwiftUI

struct Shapes1: View {
    var body: some View {
        VStack{
            ZStack {
                Rectangle()
                    .fill(Color.blue).ignoresSafeArea()
                
                VStack {
                    Circle()
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 44, height: 44)
                    Text("Meng To").bold()
                    Capsule()
                        .foregroundColor(Color.green)
                        .frame(height: 44)
                        .overlay(Text("Sign up")) //like bacground
                }
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .padding()
                
                
            }
            
            ZStack {
                Color.blue.ignoresSafeArea()

                VStack {
                    Text("SwiftUI for iOS ")
                        .bold()
                }
                .frame(width: 300, height: 200)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            }
            
        }
    }
}

struct Shapes1_Previews: PreviewProvider {
    static var previews: some View {
        Shapes1()
    }
}
