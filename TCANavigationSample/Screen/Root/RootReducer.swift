//
//  RootReducer.swift
//  TCANavigationSample
//
//  Created by Kevin ABRIOUX on 06/01/2025.
//

import Foundation
import ComposableArchitecture

@Reducer
struct RootReducer {
    
    @Reducer
    enum Path {
        case login(LoginReducer)
        case signIn(SignInReducer)
        case signUp(SignUpReducer)
        case home(HomeReducer)
    }
    
    @ObservableState
    struct State {
        var path = StackState<Path.State>()
    }
    
    enum Action {
        case path(StackAction<Path.State, Path.Action>)
    }
    
    var body: some Reducer<State, RootReducer.Action> {
        Reduce { state, action in
            switch action {
            default:
                return .none
            }
        }
        .forEach(\.path, action: \.path)
    }
}
