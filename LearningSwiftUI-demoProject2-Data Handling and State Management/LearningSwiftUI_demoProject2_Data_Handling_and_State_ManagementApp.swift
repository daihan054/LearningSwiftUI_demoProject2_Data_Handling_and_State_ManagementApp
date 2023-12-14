//
//  LearningSwiftUI_demoProject2_Data_Handling_and_State_ManagementApp.swift
//  LearningSwiftUI-demoProject2-Data Handling and State Management
//
//  Created by REVE Systems on 14/12/23.
//

import SwiftUI

@main
struct LearningSwiftUI_demoProject2_Data_Handling_and_State_ManagementApp: App {
    var appData = AppDataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appData)
        }
    }
}
