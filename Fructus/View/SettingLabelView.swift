//
//  SettingLabelView.swift
//  Fructus
//
//  Created by Xotech on 01/01/2024.
//

import SwiftUI

struct SettingLabelView: View {
    //MARK: - PROPERTIES
    let labelText : String
    let labelImage : String
    
    //MARK: - BODY
    var body: some View {
        HStack{
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage )
        }
    }
}


//MARK: - PREVIEW

#Preview {
    SettingLabelView(labelText: "Label", labelImage: "info.circle")
}
