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
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items) { expense in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(expense.name)
                                .font(.headline)
                            Text(expense.type)
                        }
                        
                        Spacer()
                        Text(expense.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        
                    }
                }
                .onDelete(perform: removeItems)
            }
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                    showingAddExpense = true
                }
            }
            .sheet(isPresented: $showingAddExpense, content: {
                AddView(expenses: expenses)
            })
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
