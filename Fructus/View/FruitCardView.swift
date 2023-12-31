//
//  FruitCardView.swift
//  Fructus
//
//  Created by Xotech on 31/12/2023.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK: - PROPERTIES
    @State private var isAnimating = false
    
    let fruit : Fruit
    
    //MARK: - BODY


    
    var body: some View {
        ZStack {
            
            VStack(spacing: 20){
                // Fruit Image
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(
                        color : Color(red: 0, green: 0, blue: 0, opacity: 0.15) ,
                        radius : /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,
                        x : 6 ,
                        y : 8
                    )
                    .scaleEffect(isAnimating ? 1.0 : 0.6, anchor: .center)
                
                // Fruit Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // Fruit headline
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480 )
                
                // Button start
                
                StartButtonView()
                
            }//: Vstack
        }//: Zstack
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0,maxWidth: .infinity , minHeight: 0 , maxHeight: .infinity , alignment: .center)
        .background(LinearGradient(
            gradient: Gradient(
                colors: fruit.gradientColors
            ),
            startPoint: .top ,
            endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)

    }
}


//MARK: - PREVIEW

#Preview {
    FruitCardView(fruit: fruitData[0])
        .previewLayout(.fixed(width: 320, height: 640))
}
