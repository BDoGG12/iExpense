//
//  UserArchiveView.swift
//  iExpense
//
//  Created by Ben Do on 12/7/25.
//

import SwiftUI

struct UserArchiveView: View {
    @State private var user = UserModel(firstName: "Taylor", lastName: "Swift")
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

#Preview {
    UserArchiveView()
}
