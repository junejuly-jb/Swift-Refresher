//
//  ListViewModel.swift
//  TodoList
//
//  Created by June Brianne Aragoncillo on 7/3/23.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems(){
        let defaultItems = [
            ItemModel(title: "First title", isCompleted: false),
            ItemModel(title: "Second title", isCompleted: true),
            ItemModel(title: "Third title", isCompleted: false),
        ]
        items.append(contentsOf: defaultItems)
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
}
