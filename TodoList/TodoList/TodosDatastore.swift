//
//  TodosDatastore.swift
//  TodoList
//
//  Created by Giordano Scalzo on 14/09/2015.
//  Copyright © 2015 Effective Code Ltd. All rights reserved.
//

import Foundation

class TodosDatastore {
    private var savedLists = [List]()
    private var savedTodos = [Todo]()
    
    init(){
    }
    
    func todos() -> [Todo] {
        return savedTodos
    }
    
    func lists() -> [List] {
        return [defaultList()] + savedLists
    }
}

// MARK: Actions
extension TodosDatastore {
    func addTodo(todo: Todo) {
        savedTodos = savedTodos + [todo]
    }
    func deleteTodo(todo: Todo?) {
        if let todo = todo {
            savedTodos = savedTodos.filter({$0 != todo})
        }
    }
    
    func doneTodo(todo: Todo) {
        deleteTodo(todo)
        let doneTodo = Todo(description: todo.description,
            list: todo.list,
            dueDate: todo.dueDate,
            done: true,
            doneDate: NSDate())
        addTodo(doneTodo)
    }
    
    func addListDescription(description: String) {
        if !description.isEmpty {
            savedLists = savedLists + [List(description: description)]
        }
    }
}

// MARK: Defaults
extension TodosDatastore {
    func defaultList() -> List {
        return List(description: "Personal")
    }
    
    func defaultDueDate() -> NSDate {
        let now = NSDate()
        let secondsInADay = NSTimeInterval(24 * 60 * 60)
        return now.dateByAddingTimeInterval(secondsInADay)
    }
}