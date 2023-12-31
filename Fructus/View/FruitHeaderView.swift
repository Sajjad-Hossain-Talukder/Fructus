//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Xotech on 31/12/2023.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTIES
    var fruit : Fruit
    @State private var isAnimatingImage : Bool = false
    //MARK: - BODY
    var body: some View {
        
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6, anchor: .center)
        }
        .frame(height: 440)
        
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
        
    }
}
//MARK: - PREVIEW
#Preview {
    FruitHeaderView(fruit: fruitData[1])
        .previewLayout(.fixed(width: 375, height: 440))
}
