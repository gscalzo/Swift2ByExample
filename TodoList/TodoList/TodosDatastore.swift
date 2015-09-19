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
        savedLists = [
            List(description: "Personal"),
            List(description: "Work"),
            List(description: "Family")
        ]
        savedTodos = [
            Todo(description: "Remember the Milk",
                list: List(description: "Family") ,
                dueDate: NSDate(),
                done: false,
                doneDate: nil),
            Todo(description: "Buy Spider Man Comics",
                list: List(description: "Personal") ,
                dueDate: NSDate(),
                done: true,
                doneDate: NSDate()
            ),
            Todo(description: "Release build",
                list: List(description: "Work") ,
                dueDate: NSDate(),
                done: false,
                doneDate: nil)
            ]
    }
    
    func todos() -> [Todo] {
        return savedTodos
    }
    
    func lists() -> [List] {
        return savedLists
    }
}

// MARK: Actions
extension TodosDatastore {
    func addTodo(todo: Todo) {
        print("addTodo")
    }
    func deleteTodo(todo: Todo?) {
        print("deleteTodo")
    }
    func doneTodo(todo: Todo) {
        print("doneTodo")
     }
}