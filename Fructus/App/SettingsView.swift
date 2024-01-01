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
    @AppStorage("isOnBoarding") var isOnBoarding : Bool = false
    
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
                            HStack(alignment: .center ){
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
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush"),
                        content: {
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will the welcome screen again.")
                                .font(.footnote)
                                .padding(.vertical,8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .multilineTextAlignment(.leading)
                        
                            Toggle(isOn: $isOnBoarding, label: {
                                Text("Restart".uppercased())
                            })
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                            
                            
                    })
                    
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone"),
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
