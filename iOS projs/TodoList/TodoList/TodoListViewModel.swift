//
//  TodoListViewModel.swift
//  TodoList
//
//  Created by Edward Kyles on 6/17/23.
//

import Foundation

struct ToDo: Hashable {
    let title: String
    var description: String
}

class TodoListViewModel: ObservableObject {
    
    @Published var todos = [ToDo]()
    var old_todo: ToDo = ToDo(title: "", description: "")
    
    func addTodo(_ todo: ToDo) {
        todos.append(todo)
    }
    
    func updateTodo(_ text: String) {
        for i in 0..<todos.count {
            if todos[i] == old_todo {
                todos[i].description = text
            }
        }
    }
    
}
