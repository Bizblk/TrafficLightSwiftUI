//
//  TrafficLightSwiftUIApp.swift
//  TrafficLightSwiftUI
//
//  Created by Виталий Оранский on 01.06.2021.
//

import SwiftUI

@main
struct TrafficLightSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(redTurnLight: 0.3, yellowTurnLight: 0.3, greenTurnLight: 0.3, buttonTitle: "Start")
        }
    }
}
