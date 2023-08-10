//
//  enveropment.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 10.08.2023.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        //типо задержка на загрузку
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
    func addNewFruit(name: String) {
        let fruit1 = FruitModel(name: name, count: 1)
        fruitArray.append(fruit1)
        
    }
    
}


struct enveropment: View {
    // @StateObject -> USE THIS ON CREATION / INIT //только для одного экрана
    // @ObservedObject -> USE THIS FOR SUBVIEWS     //если в другие вью пихаем
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {  //типо показываем загрузку
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: RandomScreen(fruitViewModel: fruitViewModel),
                                        label: {
                                            Image(systemName: "arrow.right")
                                                .font(.title)
                                        })
            )
        }
    }
}



struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    //типо передали параметры
    @ObservedObject var fruitViewModel: FruitViewModel
    //мы можем её изменять и это будет передоваться по вью
    
    
    @State var newFruit:String = ""
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack() {
                Spacer()
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                Spacer()
                HStack(){
                    Spacer()
                    TextField("add new",text: $newFruit)
                    Button(action: {
                        if !newFruit.isEmpty  {
                            fruitViewModel.addNewFruit(name: newFruit)
                            newFruit=""
                        }
                        
                    }, label: {
                        Text("Save")
                            .foregroundColor(.accentColor)
                    })
                   
                    
                    Spacer()
                }
                .padding()
                Spacer()
            }
           
           
        }
    }
}


struct enveropment_Previews: PreviewProvider {
    static var previews: some View {
        enveropment()
        
        //RandomScreen(fruitViewModel: FruitViewModel())
    }
}
