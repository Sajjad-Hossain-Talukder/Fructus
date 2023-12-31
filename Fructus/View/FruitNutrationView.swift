//
//  FruitNutrationView.swift
//  Fructus
//
//  Created by Xotech on 31/12/2023.
//

import SwiftUI

struct FruitNutrationView: View {
    //MARK: - PROPERTIES
    
    let fruit: Fruit
    let nutration :[String] = ["Energy","Sugar", "Fat", "Protien" , "Vitamins", "Minarals"]
    
    //MARK: - BODY
    
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutrational Value per 100g "){
                ForEach(0 ..< nutration.count) { item in
                    
                    Divider().padding(.vertical,2)
                    
                    HStack {
                        
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutration[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer()
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                
                    }//: HStack
                }//: For Loop
            } //: Disclosure Group
        }//: GroupBox
        
       
    }
}


//MARK: - PREVIEW
#Preview {
    FruitNutrationView(fruit: fruitData[3])
}
