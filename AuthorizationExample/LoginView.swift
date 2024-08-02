//
//  LoginView.swift
//  AuthorizationExample
//
//  Created by Андрій Коробчук on 02.08.2024.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        VStack{
            Text("Login")
            
            Button {
                UserDefaults.standard.set(true,forKey: "isLogin")
                appViewModel.isLogin = true
            }label: {
                Text("Auth")
            }
        }
    }
}

#Preview {
    LoginView()
}
