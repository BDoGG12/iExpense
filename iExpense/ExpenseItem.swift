//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Ben Do on 12/8/25.
//

import Foundation

struct ExpenseItem {
    let id: UUID = UUID()
    let name: String
    let type: String
    let amount: Double
}
