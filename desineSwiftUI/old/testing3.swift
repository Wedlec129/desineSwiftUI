//
//  testing3.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 26.07.2023.
//

import SwiftUI

struct testing3: View {
    @State private var showingAlert = false
    
    let colors: [Color] = [.red, .green, .blue]

    var body: some View {
        VStack{
            HStack{
                Button("Show Alert") {
                    showingAlert = true
                }
                .alert("Important message", isPresented: $showingAlert) {
                    
                    Button("Delete", role: .destructive) { }
                    Button("Cancel", role: .cancel) { }
                    
                }.padding()
                
                if(showingAlert){
                    Image(systemName: "chevron.left").imageScale(.small)
                }
            }
            
            ZStack {
                Color(red: 128/255, green: 165/255, blue: 117/255)
                Text("Your content")
                
            }
            VStack(alignment: .leading) {
                        ForEach((1...5).reversed(), id: \.self) {
                            Text("\($0)…")
                        }

                        Text("Ready or not, here I come!")
                    }
            VStack {
                        ForEach(colors, id: \.self) { color in
                            Text(color.description.capitalized)
                                .padding()
                                .background(color)
                        }
                    }
            
        }
    }
}

struct testing3_Previews: PreviewProvider {
    static var previews: some View {
        testing3()
    }
}
