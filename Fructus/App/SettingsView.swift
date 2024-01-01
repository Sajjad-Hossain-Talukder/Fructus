//
//  SettingsView.swift
//  Fructus
//
//  Created by Xotech on 01/01/2024.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.dismiss) private var dismiss
    //MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false ) {
                
                VStack(spacing: 20 ) {
                    
                    //MARK: - SECTION 1
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Fructus", labelImage: "info.square"),
                        content: {
                            Divider().padding(.vertical,4)
                            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ ){
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .cornerRadius(9)
                                Text("This documentation contains preliminary information about an API or technology in development. This information is subject to change")
                                    .font(.footnote)
                            }
                           
                        })
                    
                    
                    //MARK: - SECTION 2
                    
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Application", labelImage: "text.append"),
                        content: {
                            DevelopmentDetailsView()
                    })
                    
                    
                    
                }//: Vstack
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .padding(20)
                .toolbar{
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                }
                
                
            }//: Scroll View
        }//: NavView
        
    }
}


//MARK: - PREVIEW
#Preview {
    SettingsView()
        .previewLayout(.sizeThatFits)
}
