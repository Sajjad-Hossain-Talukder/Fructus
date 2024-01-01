//
//  ContentView.swift
//  Fructus
//
//  Created by Xotech on 31/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    //MARK: - PROPERTIES
    @State private var isSheetPresenting : Bool = false
    
    
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
            .toolbar{
                Button(action: {
                    isSheetPresenting = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                }) //: Button
                .sheet(isPresented: $isSheetPresenting , content: {
                    SettingsView()
        
                })
            }//: toolbar
            
        }//: NavView
     
        
        
        
    }
}

//MARK: - PREVIEW
#Preview {
    ContentView()
}
