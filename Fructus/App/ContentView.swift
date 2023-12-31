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
            //}
        
            List{
                ForEach(fruitData.shuffled()){ item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit:item)
                            .padding(.vertical,5)
                    }

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
