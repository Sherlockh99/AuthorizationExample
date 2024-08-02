//
//  AuthorizationExampleApp.swift
//  AuthorizationExample
//
//  Created by Андрій Коробчук on 02.08.2024.
//

import SwiftUI

@main
struct AuthorizationExampleApp: App {
    @ObservedObject var appViewModel = AppViewModel()
    init(){
        if UserDefaults.standard.bool(forKey: "isLogin"){
            appViewModel.isLogin = true
        }
    }
    var body: some Scene {
        WindowGroup {
            if appViewModel.isLogin {
                ContentView()
                    .environmentObject(appViewModel)
            } else {
                LoginView()
                    .environmentObject(appViewModel)
            }
        }
    }
}

