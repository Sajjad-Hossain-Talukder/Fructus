//
//  FructusApp.swift
//  Fructus
//
//  Created by Xotech on 31/12/2023.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnBoard") var isOnBoarding : Bool = false
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                ContentView()
            } else {
                OnBoardingView()
            }
        }
    }
}
