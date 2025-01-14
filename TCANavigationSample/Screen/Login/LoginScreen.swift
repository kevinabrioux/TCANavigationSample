//
//  LoginScreen.swift
//  TCANavigationSample
//
//  Created by Kevin ABRIOUX on 06/01/2025.
//

import SwiftUI
import ComposableArchitecture

struct LoginScreen: View {
    
    @Bindable var store: StoreOf<LoginReducer>
    
    var body: some View {
        
        VStack {
            Button("Sign In") {
                store.send(.delegate(.pathToSignIn))
            }
            
            Button("Sign Up") {
                store.send(.delegate(.pathToSignUp))
            }
        }
    }
}

#Preview {
    LoginScreen(
        store: Store(
            initialState: LoginReducer.State(),
            reducer: { LoginReducer() }
        )
    )
}
