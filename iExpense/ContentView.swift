//
//  ContentView.swift
//  iExpense
//
//  Created by Ben Do on 12/6/25.
//

import SwiftUI
import Observation

struct ContentView: View {
    @State private var expenses = Expenses()
    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items, id: \.id) { expense in
                    Text(expense.name)
                }
                .onDelete(perform: removeItems)
            }
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                    let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
                    expenses.items.append(expense)
                }
            }
            .navigationTitle("iExpense")
            
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
