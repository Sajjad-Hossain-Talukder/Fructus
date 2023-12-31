//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Xotech on 31/12/2023.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    let fruit : Fruit
    //MARK: - BODY
    
    var body: some View {
        NavigationView {
            //NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
            ScrollView(.vertical , showsIndicators:  false ) {
                
                VStack(alignment:.center, spacing:20) {
                    
                    // Header
                    FruitHeaderView(fruit: fruit)
                    
                    
                    VStack(alignment:.leading, spacing:20){
                        
                        // Title
                        Text(fruit.title)
                            .fontWeight(.heavy)
                            .font(.largeTitle)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrition
                        FruitNutrationView(fruit: fruit)
     
                        // SubHeadLine
                        Text("Learn more about \(fruit.title)")
                            .foregroundColor(fruit.gradientColors[1])
                              .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.subheadline)
                        
                           
                        
                        // description
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        
                        
                        // Link
                        SourceLinkView()
                            .padding(.top,20)
                            .padding(.bottom,40)
                        
                    } //: Vstack
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment: .center )
                    
                    
                    
                }//: Vstack
              
                //.navigationBarTitle(fruit.title, displayMode: .inline )
                //.navigationBarHidden(true)
               
                
                
            }//: Scroll View
            .edgesIgnoringSafeArea(.top)
           
        }//: Nav View
    
       
      
        
    }
}

//MARK: - PREVIEW

#Preview {
    FruitDetailView(fruit: fruitData[2])
}
