//
//  DevelopmentDetailsView.swift
//  Fructus
//
//  Created by Xotech on 01/01/2024.
//

import SwiftUI

struct DevelopmentDetailsView: View {
    var body: some View {
        VStack{
            
            ExtractedView(titlePortion: "Developer", description: "Sajjad Hossain Talukder")
            ExtractedView(titlePortion: "Designer", description: "Robert Bruce")
            ExtractedView(titlePortion: "Compatibility", description: "iOS 17")
           
            
            ExtractedLinkView(titlePortion: "Website", link: "https://sajjad-hossain-talukder.github.io/resume/", handle: "PortFolio", icon: "arrow.up.right.square")
            ExtractedLinkView(titlePortion: "Twitter", link: "https://twitter.com", handle: "@sajjadhuseyn", icon: "arrow.up.right.square")
            
            ExtractedView(titlePortion: "SwiftUI", description: "5.0")
            
            ExtractedView(titlePortion: "Version", description: "1.1.0")
            
        }//: Vstack
    }
}

#Preview {
    DevelopmentDetailsView()
}

struct ExtractedView: View {
    //MARK: - PROPERTIES
    let titlePortion : String
    let description : String
    
    //MARK: - BODY
    var body: some View {
        Divider().padding(.vertical,4)
        HStack{
            Text(titlePortion)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            Spacer()
            Text(description)
                .fontWeight(.semibold)
        }
    }
}


struct ExtractedLinkView: View {
    
    //MARK: - PROPERTIES
    let titlePortion : String
    let link : String
    let handle : String
    let icon : String
    //MARK: - BODY
    
    
    var body: some View {
        Divider().padding(.vertical,4)
        
        HStack{
            Text(titlePortion)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            Spacer()
            Link(destination: URL(string: link )!, label: {
                HStack (spacing:10){
                    Text(handle)
                        .fontWeight(.semibold)
                    Image(systemName: icon )
                } //: HStack
                
            }) //: Link
        } //: HStack
    }
}
