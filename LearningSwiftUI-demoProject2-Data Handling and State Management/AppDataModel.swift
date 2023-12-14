//
//  AppDataModel.swift
//  LearningSwiftUI-demoProject2-Data Handling and State Management
//
//  Created by REVE Systems on 14/12/23.
//

import Foundation
import SwiftUI

class AppDataModel: ObservableObject {
    @Published var text: String = "Initial Text"
    @Published var toggleStatus: Bool = false
}
