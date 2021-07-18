//
//  Assignment_3App.swift
//  Assignment-3
//
//  Created by Vinícius Couto on 17/07/21.
//

import SwiftUI

@main
struct Assignment_3App: App {
    private let game = SetGameManager()

    var body: some Scene {
        WindowGroup {
            SetGameView(viewModel: game)
        }
    }
}
