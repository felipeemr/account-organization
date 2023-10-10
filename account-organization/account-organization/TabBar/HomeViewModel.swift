//
//  HomeViewModel.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 14/09/23.
//

import UIKit
import CoreData

class ExpensesViewModel {
    private let managedObjectContext: NSManagedObjectContext

    init() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        managedObjectContext = appDelegate.persistentContainer.viewContext
    }

    func fetchExpenses() -> [Expenses] {
        let fetchRequest: NSFetchRequest<Expenses> = Expenses.fetchRequest()
        // Você pode adicionar filtros ou ordenação aqui, se necessário.

        do {
            return try managedObjectContext.fetch(fetchRequest)
        } catch {
            print("Erro ao buscar despesas: \(error.localizedDescription)")
            return []
        }
    }

    func saveExpense(nome: String, data: String, valor: String) {
        let expense = Expenses(context: managedObjectContext)
        expense.name = nome
        expense.date = data
//        expense.value = valor

        do {
            try managedObjectContext.save()
            print("Despesa salva com sucesso")
        } catch {
            print("Erro ao salvar despesa: \(error.localizedDescription)")
        }
    }
}
