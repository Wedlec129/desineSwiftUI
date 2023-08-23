//
//  AsyncImageBoocamp.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 20.08.2023.
// IOS 15

import SwiftUI

/*
 case empty -> No image is loaded.
 case success(Image) -> An image succesfully loaded.
 case failure(Error) -> An image failed to load with an error.
 */

struct AsyncImageBoocamp: View {
    
    let url = URL(string: "https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcQkrjYxSfSHeCEA7hkPy8e2JphDsfFHZVKqx-3t37E4XKr-AT7DML8IwtwY0TnZsUcQ")
    
    var body: some View {
        VStack{
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let returnedImage):
                    returnedImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                case .failure:
                    Image(systemName: "questionmark")
                        .font(.headline)
                default:
                    Image(systemName: "questionmark")
                        .font(.headline)
                }
            }
                    AsyncImage(url: url, content: { returnedImage in
                        returnedImage
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .cornerRadius(20)
                    }, placeholder: {
                        ProgressView()
                    })
        }
    }
}

struct AsyncImageBoocamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBoocamp()
    }
}
