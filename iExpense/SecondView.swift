//
//  SecondView.swift
//  iExpense
//
//  Created by Ben Do on 12/7/25.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    var name = "Bilbo"
    
    var body: some View {
        Text("Hello, \(name)!")
            .padding()
        Button("Dismiss") {
            self.dismiss()
        }
    }
}

#Preview {
    SecondView(name: "Bilbo")
}
