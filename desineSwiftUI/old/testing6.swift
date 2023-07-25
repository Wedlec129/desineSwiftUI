//
//  testing6.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 26.07.2023.
//

import SwiftUI

struct testing6: View {
    var body: some View {
        TabView{
            
            testing4()
                .tabItem {
                    VStack{
                        Image(systemName: "paperplane.circle.fill")
                       Text("say hellooo")
                            
                    }
                }
            
            VStack{
                Text("w")
            }
            .tabItem {
                Image(systemName: "tray.full")
               
                }
            
            
        }
        //.tabViewStyle(.page)
        //.indexViewStyle(.page(backgroundDisplayMode: .always))
        
    }
}

struct testing6_Previews: PreviewProvider {
    static var previews: some View {
        testing6()
    }
}
