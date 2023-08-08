//
//  jsView.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 08.08.2023.
//
//тут должно быть 3 файла по архитектуре mvvm

//1
import SwiftUI
import Foundation
struct jsView: View {
    @StateObject private var viewModel = JSONLoadModel()

    var body: some View {
        VStack(alignment: .leading,spacing: 10) {
            if let responseData = viewModel.responseData {
                
                Text("Verse: \(responseData.verse.notice)")
                Text("Reference: \(responseData.verse.details.reference)")
                
            } else {
                Text("Loading...")
            }
        }
        .onAppear {
            viewModel.fetchData()
        }
    }
}

struct jsView_Previews: PreviewProvider {
    static var previews: some View {
        jsView()
    }
}








//2
//  model.swift
//  testJsonParser
//  https://app.quicktype.io
//  Created by Борух Соколов on 13.07.2023.
//
//import Foundation
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)


// MARK: - Welcome
struct ResponseData: Codable {
    let verse: Verse
}

// MARK: - Verse
struct Verse: Codable {
    let details: Details
    let notice: String
}

// MARK: - Details
struct Details: Codable {
    let text, reference, version: String
    let verseurl: String
}

/*
 
 {
   "verse": {
     "details": {
       "text": "I love the Lord, for he heard my voice; he heard my cry for mercy. Because he turned his ear to me, I will call on him as long as I live.",
       "reference": "Psalm 116:1-2",
       "version": "NIV",
       "verseurl": "http://www.ourmanna.com/"
     },
     "notice": "Powered by OurManna.com"
   }
 }
 
 */




//3
class JSONLoadModel: ObservableObject {
    @Published var responseData: ResponseData?
    
    func fetchData() {
        guard let url = URL(string: "https://beta.ourmanna.com/api/v1/get/?format=json") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error fetching data: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                print("No data received.")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let responseData = try decoder.decode(ResponseData.self, from: data)
                DispatchQueue.main.async {
                    self.responseData = responseData
                }
            } catch {
                print("Error decoding data: \(error.localizedDescription)")
            }
        }.resume()
    }
}
