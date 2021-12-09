//
//  Learning_App_2App.swift
//  Learning App 2
//
//  Created by PM JavaScript - Ja'kobe Stumon on 12/3/21.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
        HomeView()
            .environmentObject(ContentModel())
        }
    }
}
