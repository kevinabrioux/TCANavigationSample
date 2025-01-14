//
//  RootScreen.swift
//  TCANavigationSample
//
//  Created by Kevin ABRIOUX on 06/01/2025.
//

import SwiftUI
import ComposableArchitecture

struct RootScreen: View {
    
    @Bindable var store: StoreOf<RootReducer>
    
    var body: some View {
        
        NavigationStack(
            path: $store.scope(state: \.path, action: \.path),
            root: {},
            destination: { _ in }
        )
        
        NavigationStack(path: $store.scope(state: \.path, action: \.path)) {

        } destination: { pathStore in
         //   switch pathStore.case {
         //   case .home(let store): HomeScreen(store: store)
         //   case .login(let store): LoginScreen(store: store)
         //   case .signIn(let store): SignInScreen(store: store)
         //   case .signUp(let store): SignUpScreen(store: store)
         //   }
        }
    }
}

#Preview {
    RootScreen(
        store: Store(
            initialState: RootReducer.State(),
            reducer: {}
        )
    )
}
