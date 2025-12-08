//
//  UserDefaultsView.swift
//  iExpense
//
//  Created by Ben Do on 12/7/25.
//

import SwiftUI

struct UserDefaultsView: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap") ?? 0
    
    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
}

#Preview {
    UserDefaultsView()
}
