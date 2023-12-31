//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Xotech on 31/12/2023.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY


    var body: some View {
        
        TabView {
            ForEach(fruitData){ item in
                FruitCardView(fruit: item)
            }
        } //: Tabview
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}


//MARK: - PREVIEW

#Preview {
    OnBoardingView()
}
