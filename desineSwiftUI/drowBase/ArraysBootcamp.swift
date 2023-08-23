//
//  ArrayModificationViewModel.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 20.08.2023.
//

import SwiftUI



struct UserModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let points: Int
    let isVerified: Bool
}

class ArrayModificationViewModel: ObservableObject {
    
    @Published var dataArray: [UserModel] = []
    @Published var filteredArray: [UserModel] = []
    @Published var mappedArray: [String] = []
    
    init() {
        getUsers()
        updateFilteredArray()
    }
    
    func updateFilteredArray() {
        
        //sort()
        filter()
        
        // map
        /*
         //        mappedArray = dataArray.map({ (user) -> String in
         //            return user.name ?? "ERROR"
         //        })
         
         //        mappedArray = dataArray.map({ $0.name })
         
         //        mappedArray = dataArray.compactMap({ (user) -> String? in
         //            return user.name
         //        })
         
         //        mappedArray = dataArray.compactMap({ $0.name })
         */
        /*
         mappedArray = dataArray
         .sorted(by: { $0.points > $1.points })
         .filter({ $0.isVerified })
         .compactMap({ $0.name })*/
        
    }
    
    func getUsers() {
        let user1 = UserModel(name: "Nick", points: 5, isVerified: true)
        let user2 = UserModel(name: "Chris", points: 0, isVerified: false)
        let user3 = UserModel(name: "nil", points: 20, isVerified: true)
        let user4 = UserModel(name: "Emily", points: 50, isVerified: false)
        let user5 = UserModel(name: "Samantha", points: 45, isVerified: true)
        let user6 = UserModel(name: "Jason", points: 23, isVerified: false)
        let user7 = UserModel(name: "Sarah", points: 76, isVerified: true)
        let user8 = UserModel(name: "pop", points: 45, isVerified: false)
        let user9 = UserModel(name: "Steve", points: 1, isVerified: true)
        let user10 = UserModel(name: "Amanda", points: 100, isVerified: false)
        self.dataArray.append(contentsOf: [
            user1,
            user2,
            user3,
            user4,
            user5,
            user6,
            user7,
            user8,
            user9,
            user10,
        ])
    }
    
    
    func sort(){
        // sort
        /*
         //        filteredArray = dataArray.sorted { (user1, user2) -> Bool in
         //            return user1.points > user2.points
         //        }
         */
        filteredArray = dataArray.sorted(by: { $0.points < $1.points })
        
    }
    
    
    func filter(){
        // filter
        /*
         //        filteredArray = dataArray.filter({ (user) -> Bool in
         //            return user.isVerified
         //        })
         */
         filteredArray = dataArray.filter({ $0.isVerified })
         
        
    }
    
    
}




struct ArraysBootcamp: View {
    
    @StateObject var vm = ArrayModificationViewModel()
    
    var body: some View {
        TabView{
            
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(vm.filteredArray) { user in
                        
                        VStack(alignment: .leading) {
                            Text("\(user.name)")
                                .font(.headline)
                            HStack {
                                Text("Points: \(user.points)")
                                Spacer()
                                if user.isVerified {
                                    Image(systemName: "flame.fill")
                                }
                            }
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue.cornerRadius(10))
                        .padding(.horizontal)
                    }
                }
            }
            .tabItem {
                Image(systemName: "house")
               
                }
            
            
            
            
            
            
        }
       
            
    }
}


struct ArraysBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ArraysBootcamp()
    }
}
