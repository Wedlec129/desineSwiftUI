//
//  testing4.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 26.07.2023.

import SwiftUI

struct testing4: View {
    var emoji=["🍕","🍪","🍙"]
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: {testing3()}) {
                    VStack{
                        Text("Hello World")
                            .padding()
                        HStack{
                            ForEach(0..<emoji.count) {i in
                                Text(emoji[i])
                            }
                        }
                    }
                    
                }
                
                
            }
            .navigationBarTitle("SwiftUI")
            
        }
    }
}

struct testing4_Previews: PreviewProvider {
    static var previews: some View {
        testing4()
    }
}
