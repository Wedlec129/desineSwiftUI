//
//  shareButton24.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI

struct shareButton24: View {
    /*
     
    let myString = "The quick brown fox jumps over the lazy dog"
    myString.contains("brown fox")
    // Output: true
    
     let myString = "Monday, Tuesday, Wednesday"
     myString.lowercased()
     // Output: "monday, tuesday, wednesday"
     
     
    */
    var body: some View {
        Button(action: shareButton) {
            Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.black)
        }
    }
}

func shareButton() {
        let url = URL(string: "https://designcode.io")
        let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)

        UIApplication.shared.windows.first?.rootViewController!.present(activityController, animated: true, completion: nil)
}

struct shareButton24_Previews: PreviewProvider {
    static var previews: some View {
        shareButton24()
    }
}
