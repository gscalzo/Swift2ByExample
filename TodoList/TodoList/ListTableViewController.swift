//
//  ListTableViewController.swift
//  TodoList
//
//  Created by Giordano Scalzo on 21/09/2015.
//  Copyright © 2015 Effective Code Ltd. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    var onListSelected: ((list: List) -> Void)?
    var todosDatastore: TodosDatastore?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lists"
    }

    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todosDatastore?.lists().count ?? 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        if let list = todosDatastore?.lists()[indexPath.row] {
            cell.textLabel?.text = list.description
        }
        cell.selectionStyle = .None
        return cell
    }

    // MARK: - Table view delegate
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let list = todosDatastore?.lists()[indexPath.row]
        if let list = list, onListSelected = onListSelected {
            onListSelected(list: list)
        }
        navigationController?.popViewControllerAnimated(true)
    }
    
 }

// MARK: Actions
extension ListTableViewController {
    @IBAction func addListButtonTapped(sender: AnyObject) {
        let alert = UIAlertController(title: "Enter list name",
            message: "To create a new list, please enter the name of the list",
            preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "OK",
            style: .Default) { (action: UIAlertAction!) -> Void in
                let textField = alert.textFields?.first
                self.addList(textField?.text ?? "")
        }
        let cancelAction = UIAlertAction(title: "Cancel",
            style: .Default, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        alert.addTextFieldWithConfigurationHandler(nil)
        presentViewController(alert,
            animated: true,
            completion: nil)
    }
    
    func addList(description: NSString) {
        todosDatastore?.addListDescription(description as String)
        tableView.reloadData()
    }
}
