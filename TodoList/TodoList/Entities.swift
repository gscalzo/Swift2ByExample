//
//  Entities.swift
//  TodoList
//
//  Created by Giordano Scalzo on 14/09/2015.
//  Copyright © 2015 Effective Code Ltd. All rights reserved.
//

import Foundation

struct Todo: Equatable {
    let description: String
    let list: List
    let dueDate: NSDate
    let done: Bool
    let doneDate: NSDate?
}

func ==(todo1: Todo, todo2: Todo) -> Bool {
    return todo1.description == todo2.description
    && todo1.dueDate == todo2.dueDate
}

struct List {
    let description: String
}