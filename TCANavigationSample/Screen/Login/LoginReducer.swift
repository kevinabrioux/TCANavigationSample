//
//  LoginReducer.swift
//  TCANavigationSample
//
//  Created by Kevin ABRIOUX on 06/01/2025.
//

import Foundation
import ComposableArchitecture

@Reducer
struct LoginReducer {
    
    struct State {
        
    }
    
    @CasePathable
    enum Action {
        // By action to be handle by parent view
        case delegate(Delegate)
        
        @CasePathable
        enum Delegate {
            case pathToSignIn
            case pathToSignUp
        }
    }
}
