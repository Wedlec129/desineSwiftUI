//
//  toolBar3.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 24.07.2023.
//

import SwiftUI

struct toolBar3: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("My app")
                Text("New York")
                    .fontWeight(.bold)
                    .font(.system(size: 90, weight: .light, design: .serif))
                    .shadow(color: Color.pink.opacity(1), radius: 20, x: 0, y: 10)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width:200 ,height: 200)
                
                    .overlay(
                        Image(systemName: "xmark")
                            .frame(width: 32, height: 32)
                            .background(Circle().stroke())
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                            .padding()
                    )
                
                
                
                
                
                
                
            }
            
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Image(systemName: "person")
                    HStack {
                        Image(systemName: "ellipsis")
                        Divider() // |
                            .foregroundColor(.red)
                        Spacer()
                        Image(systemName: "trash")
                            .frame(width: 32, height: 32)
                            .background(Color.blue)
                            .mask(Circle())
                    }
                }
                
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width:40 ,height: 40)
                            
                    }
                }
                
            }
            
        }
        
        
    }
}

struct toolBar3_Previews: PreviewProvider {
    static var previews: some View {
        toolBar3()
    }
}
