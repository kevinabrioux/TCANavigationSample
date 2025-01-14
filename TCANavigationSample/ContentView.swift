//
//  ContentView.swift
//  TCANavigationSample
//
//  Created by Kevin ABRIOUX on 06/01/2025.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    var body: some View {
        RootScreen(store: Store(
            initialState: RootReducer.State(),
            reducer: {
                RootReducer()
            }
        ))
    }
}

#Preview {
    ContentView()
}
