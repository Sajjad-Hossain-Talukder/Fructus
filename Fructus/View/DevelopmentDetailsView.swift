//
//  DevelopmentDetailsView.swift
//  Fructus
//
//  Created by Xotech on 01/01/2024.
//

import SwiftUI

struct DevelopmentDetailsView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack{
            
            ExtractedView(titlePortion: "Developer", handle: "Sajjad Hossain Talukder", link: nil , icon: nil)
            ExtractedView(titlePortion: "Designer", handle: "Robert Bruce", link: nil , icon: nil)
            ExtractedView(titlePortion: "Compatibility", handle: "iOS 17", link: nil , icon: nil)
           
            
            ExtractedView(titlePortion: "Website", handle: "PortFolio", link: "https://sajjad-hossain-talukder.github.io/resume/", icon: "arrow.up.right.square")
            ExtractedView(titlePortion: "Twitter", handle: "@sajjadhuseyn", link: "https://twitter.com", icon: "arrow.up.right.square")
            
            ExtractedView(titlePortion: "SwiftUI", handle: "5.0", link: nil , icon: nil)
            
            ExtractedView(titlePortion: "Version", handle: "1.1.0", link: nil , icon: nil)
            
        }//: Vstack
    }
}


struct ExtractedView: View {
    
    //MARK: - PROPERTIES
    let titlePortion : String
    let handle : String
    let link : String?
    let icon : String?
    
    
    //MARK: - BODY
    var body: some View {
        Divider().padding(.vertical,4)
        
        HStack{
            Text(titlePortion)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            Spacer()
            if let safeLink = link {
                Link(destination: URL(string: safeLink )!, label: {
                    HStack (spacing:5){
                        Text(handle)
                            //.fontWeight(.semibold)
                        Image(systemName: icon! )
                            .foregroundColor(.pink)
                    } //: HStack
                    
                }) //: Link
            } else {
                Text(handle)
                    //.fontWeight(.semibold)
            }
            
        } //: HStack
    }
}


//MARK: - PREVIEW

#Preview {
    DevelopmentDetailsView()
    
   // DevelopmentDetailsView()
}

