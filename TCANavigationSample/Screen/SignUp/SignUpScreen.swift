//
//  SignUpScreen.swift
//  TCANavigationSample
//
//  Created by Kevin ABRIOUX on 06/01/2025.
//

import SwiftUI
import ComposableArchitecture

struct SignUpScreen: View {
    @Bindable var store: StoreOf<SignUpReducer>

    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    SignUpScreen(store: Store(
        initialState: SignUpReducer.State(),
        reducer: { SignUpReducer() }
    ))
}
