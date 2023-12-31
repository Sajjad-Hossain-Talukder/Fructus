//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Xotech on 31/12/2023.
//

import SwiftUI

struct SourceLinkView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            
        } //: GroupBox
        .font(.footnote)
    }
}


//MARK: - PREVIEW

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
}
