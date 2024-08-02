//
//  ContentView.swift
//  AuthorizationExample
//
//  Created by Андрій Коробчук on 02.08.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appViewModel: AppViewModel

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("App")
            
            Button{
                UserDefaults.standard.set(false,forKey: "isLogin")
                appViewModel.isLogin = false
            }label: {
                Text("OUT")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
