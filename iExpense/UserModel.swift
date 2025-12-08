//
//  UserModel.swift
//  iExpense
//
//  Created by Ben Do on 12/7/25.
//

import Foundation

@Observable
class User {
    var firstName: String = "Bilbo"
    var lastName: String = "Baggins"
}

// Archiving & Unarchiving data
struct UserModel: Codable {
    let firstName: String
    let lastName: String
}
