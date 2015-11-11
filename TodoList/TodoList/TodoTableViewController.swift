//
//  TodoTableViewController.swift
//  TodoList
//
//  Created by Giordano Scalzo on 17/09/2015.
//  Copyright © 2015 Effective Code Ltd. All rights reserved.
//

import UIKit
import MGSwipeTableCell

@objc(TodoTableViewController)
class TodoTableViewController: UITableViewController {
    private var todosDatastore: TodosDatastore?
    private var todos: [Todo]?
    private var selectedTodo: Todo?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Todos"
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        refresh()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Configure
    
    func configure(todosDatastore: TodosDatastore) {
        self.todosDatastore = todosDatastore
    }
    
    // MARK: - Internal Functions
    private func refresh() {
        if let todosDatastore = todosDatastore {
            todos = todosDatastore.todos().sort{ $0.dueDate.compare($1.dueDate) ==
                NSComparisonResult.OrderedAscending
            }
            tableView.reloadData()
        }
    }
    
    // MARK: - Table view data source
    override func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return todos?.count ?? 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TodoCell", forIndexPath: indexPath) as! MGSwipeTableCell
        
        if let todo = todos?[indexPath.row] {
            renderCell(cell, todo: todo)
            setupButtonsForCell(cell, todo: todo)
        }
        
        return cell
    }
    
    private func setupButtonsForCell(cell: MGSwipeTableCell, todo: Todo){
        cell.rightButtons = [
            MGSwipeButton(title: "Edit",
                backgroundColor: UIColor.blueColor(),
                padding: 30) {
                    [weak self] sender in
                    self?.editButtonPressed(todo)
                    return true
            },
            MGSwipeButton(title: "Delete",
                backgroundColor: UIColor.redColor(),
                padding: 30) {
                    [weak self] sender in
                    self?.deleteButtonPressed(todo)
                    return true
            }
        ]
        
        cell.rightExpansion.buttonIndex = 0
        cell.leftButtons = [
            MGSwipeButton(title: "Done",
                backgroundColor: UIColor.greenColor(),
                padding: 30) {
                    [weak self] sender in
                    self?.doneButtonPressed(todo)
                    return true
            } ]
        cell.leftExpansion.buttonIndex = 0
    }


    private func renderCell(cell:UITableViewCell, todo: Todo){
        let dateFormatter:NSDateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "HH:mm dd-MM-YY"
        let dueDate = dateFormatter.stringFromDate(todo.dueDate)
        cell.detailTextLabel?.text = "\(dueDate) | \(todo.list.description)"
        cell.textLabel?.text = todo.description
        
        cell.accessoryType = todo.done ? .Checkmark : .None
    }
}

// MARK: Actions
extension TodoTableViewController {
    @IBAction func addTodoButtonPressed(sender: AnyObject){
        performSegueWithIdentifier("addTodo", sender: self)
    }
    
    func editButtonPressed(todo: Todo){
        selectedTodo = todo
        performSegueWithIdentifier("editTodo", sender: self)
    }
    
    func deleteButtonPressed(todo: Todo){
        todosDatastore?.deleteTodo(todo)
        refresh()
    }
    
    func doneButtonPressed(todo: Todo){
        todosDatastore?.doneTodo(todo)
        refresh()
    }
}


// MARK: Segue
extension TodoTableViewController {
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let identifier = segue.identifier,
        destinationViewController = segue.destinationViewController as? EditTodoTableViewController
        else {
            return
        }
        
        destinationViewController.todosDatastore = todosDatastore
        destinationViewController.todoToEdit = selectedTodo
        selectedTodo = nil

        switch identifier {
        case "addTodo":
                destinationViewController.title = "New Todo"
        case "editTodo":
                destinationViewController.title = "Edit Todo"
        default:
            break
        }
    }
}
