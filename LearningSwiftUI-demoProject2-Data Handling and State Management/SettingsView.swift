//
//  SettingsView.swift
//  LearningSwiftUI-demoProject2-Data Handling and State Management
//
//  Created by REVE Systems on 14/12/23.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var appData: AppDataModel
    @ObservedObject var observedData: AppDataModel

    var body: some View {
        VStack {
            TextField("Enter New Text", text: $appData.text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Toggle App Data Toggle") {
                appData.toggleStatus.toggle()
            }.customSpacing(50)
            
            Divider().customSpacing(50)
            
            TextField("Enter New Text", text: $observedData.text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Toggle Observed Data Toggle") {
                observedData.toggleStatus.toggle()
            }
        }
        .padding()
    }
}

