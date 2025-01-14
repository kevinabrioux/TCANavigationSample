//
//  SignInScreen.swift
//  TCANavigationSample
//
//  Created by Kevin ABRIOUX on 06/01/2025.
//

import SwiftUI
import ComposableArchitecture

struct SignInScreen: View {
    
    @Bindable var store: StoreOf<SignInReducer>

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SignInScreen(store: Store(
        initialState: SignInReducer.State(),
        reducer: { SignInReducer() }
    ))
}
