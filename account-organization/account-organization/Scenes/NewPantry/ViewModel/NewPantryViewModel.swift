import UIKit
import CoreData

class NewPantryViewModel {

    func saveData(title: String, value: String, date: String) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        let novoItem = NSEntityDescription.insertNewObject(forEntityName: "Expenses", into: context) as! Expenses
        novoItem.name = title
        novoItem.value = 22.2
//        novoItem.date = date

        do {
            try context.save()
            print("Dados salvos com sucesso")
        } catch {
            print("Erro ao salvar dados: \(error.localizedDescription)")
        }
    }
}
