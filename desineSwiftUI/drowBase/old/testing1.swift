//
//  testing1.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 26.07.2023.
//

import SwiftUI

struct testing1: View {
    @State var tapCount = 0
    
    var body: some View {
        VStack{
            appBar()
            
            Text("Do you want to download free song for ipod? If so, reading this article could save you from getting in to a lot of trouble! Downloading music to your Ipod has more than one pitfall associated with it, and this article will tell you the best way to download free song for Ipod.")
                .padding(10)
            
            Button(action: {self.tapCount += 1},
                    label: {
                        Text("Tap count \(tapCount)") })
            
            
            NavigationView{
                List{
                    /*Text("lol") //like laible
                        .font(.system(size: 20))
                    Text("kek") //like laible
                    */
                    appBar()
                    appBar()
                    
                    
                }
                .navigationBarTitle(Text("name"))
                
            }
            List(1..<5) { i in
                Text("Detail \(i)")
            }
            
        }
        
    }
}



struct appBar: View {
    var body: some View {
        VStack{
            HStack(spacing: 8.0) {
                Image(systemName: "xmark")
                    .resizable()                //resize to frame
                    .frame(width: 70,height: 70)    //frame==rama
                    .clipShape(Circle())            //вырезаем круг
                
                VStack(alignment: .leading, spacing: 2.0) { //alignment это выравнивание и там слева и отступ
                    Text("Don Ford")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.08))    //цвет
                    
                    HStack{
                        Text("donford@gmail.com")
                            .colorMultiply(.black)
                        
                        Spacer() //move to bordaer
                        Image("like")
                        Text("12.2K")
                    }
                }
            }
        }
    }
}


struct testing1_Previews: PreviewProvider {
    static var previews: some View {
        testing1()
    }
}
