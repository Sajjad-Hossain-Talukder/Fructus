//
//  StartButtonView.swift
//  Fructus
//
//  Created by Xotech on 31/12/2023.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY

    var body: some View {
        
        Button(action:{
            print("Exit On Boarding ")
        }) {
            HStack (spacing:8){
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //: Hstack
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //: Button
        .accentColor(.white)
    }
}


//MARK: - PREVIEW

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
