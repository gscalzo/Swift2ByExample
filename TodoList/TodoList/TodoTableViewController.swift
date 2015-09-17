//
//  TodoTableViewController.swift
//  TodoList
//
//  Created by Giordano Scalzo on 17/09/2015.
//  Copyright © 2015 Effective Code Ltd. All rights reserved.
//

import UIKit

@objc(TodoTableViewController)
class TodoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Todos"
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView,
               numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(tableView: UITableView,
                  cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TodoCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = "Todo number \(indexPath.row)"
        
        return cell
    }
}
