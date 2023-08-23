//
//  swipe28.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI

struct swipe28: View {
    var body: some View {
        List{
            Text("Hello, World!")
                .swipeActions {
                    Button {
                        print("Message deleted")
                    } label: {
                        
                        Label("Delete", systemImage: "trash")
                        Text("lol")
                    }
                    .tint(.red)
                }
                .badge("NEW")
        }
        
        
    }
}




struct swipe28_Previews: PreviewProvider {
    static var previews: some View {
        swipe28()
    }
}
