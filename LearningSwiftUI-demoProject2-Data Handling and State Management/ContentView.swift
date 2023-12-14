//
//  ContentView.swift
//  LearningSwiftUI-demoProject2-Data Handling and State Management
//
//  Created by REVE Systems on 14/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var localCounter: Int = 0
    @EnvironmentObject var appData: AppDataModel
    @ObservedObject var observedData = AppDataModel()

    var body: some View {
        NavigationView {
            VStack {
                Text("Local Counter: \(localCounter)")
                Button("Increment Local Counter") {
                    localCounter += 1
                }.customSpacing(20)
                                
                Divider().customSpacing(50)

                Text("App Data Text: \(appData.text)")
                Toggle(isOn: $appData.toggleStatus) {
                    Text("App Data Toggle")
                }.customSpacing(20)
                
                Divider().customSpacing(50)

                Text("Observed Data Text: \(observedData.text)")
                Toggle(isOn: $observedData.toggleStatus) {
                    Text("Observed Data Toggle")
                }.customSpacing(20)

                Divider().customSpacing(50)

                NavigationLink("Go to Settings", destination:  SettingsView(observedData: observedData))
            }
            .padding()
        }
        .environmentObject(appData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
