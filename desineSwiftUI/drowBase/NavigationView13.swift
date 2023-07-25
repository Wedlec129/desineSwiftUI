//
//  NavigationView13.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI

struct NavigationView13: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(.yellow)
                        .frame(height: 1000)
                        .padding()
                    Spacer()
                    Link(destination: URL(string: "https://google.com")!) {
                        Image(systemName: "link")
                            .frame(width: 32, height: 32)
                            .background(Color.blue)
                            .mask(Circle())
                            .foregroundColor(.white)
                    }
                }
                
            }
            .navigationTitle("Today")
            .navigationBarItems(trailing: Image(systemName: "person.crop.circle"))
        }
        
    }
}

struct NavigationView13_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView13()
    }
}
