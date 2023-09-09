//
//  TravelMateApp.swift
//  TravelMate
//
//  Created by roshni kainthan on 6/1/23.
//

import SwiftUI

@main
struct TravelMateApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            WelcomeView()
            ContentView().environmentObject(modelData)
        }
    }
}
