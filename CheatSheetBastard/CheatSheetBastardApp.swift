//
//  CheatSheetBastardApp.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2021-07-12.
//

import SwiftUI

@main
struct CheatSheetBastardApp: App {
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(Model.instance)
        }
    }
}
