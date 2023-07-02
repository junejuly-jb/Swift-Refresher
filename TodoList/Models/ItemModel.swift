//
//  ItemModel.swift
//  TodoList
//
//  Created by June Brianne Aragoncillo on 7/2/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
