//
//  HomeScreen.swift
//  TCANavigationSample
//
//  Created by Kevin ABRIOUX on 06/01/2025.
//

import SwiftUI
import ComposableArchitecture

struct HomeScreen: View {
    
    @Bindable var store: StoreOf<HomeReducer>
    
    var body: some View {
        Text("Hello, World!")
            .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeScreen(store: Store(
        initialState: HomeReducer.State(),
        reducer: {}
    ))
}
