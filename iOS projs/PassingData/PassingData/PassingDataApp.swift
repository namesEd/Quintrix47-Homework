//
//  PassingDataApp.swift
//  PassingData
//
//  Created by Edward Kyles on 6/11/23.
//

import SwiftUI

@main
struct PassingDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel:
                            PassingDataViewModel())
        }
    }
}
