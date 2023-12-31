//
//  TodoListApp.swift
//  TodoList
//
//  Created by June Brianne Aragoncillo on 7/2/23.
//

import SwiftUI

/*
    MVVM Architecture
    Model - data points
    View - UI
    ViewModel - manages Models for View
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
