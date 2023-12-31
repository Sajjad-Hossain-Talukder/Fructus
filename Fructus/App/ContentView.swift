//
//  ContentView.swift
//  Fructus
//
//  Created by Xotech on 31/12/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
     //MARK: - BODY
    var body: some View {
        NavigationView {
            //NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
        
            List{
                ForEach(fruitData.shuffled()){ item in
                    FruitRowView(fruit:item)
                        .padding(.vertical,5)

                }
                .listRowSeparator(.visible)
            }//: List
    
          
            .navigationTitle("Fruits")
            
        }//: NavView
        
        
        
    }
}

//MARK: - PREVIEW
#Preview {
    ContentView()
}
