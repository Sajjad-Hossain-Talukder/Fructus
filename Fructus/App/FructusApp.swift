//
//  FructusApp.swift
//  Fructus
//
//  Created by Xotech on 31/12/2023.
//

import SwiftUI

@main
struct FructusApp: App {
   
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
