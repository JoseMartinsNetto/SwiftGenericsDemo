//
//  BaseTableViewController.swift
//  Generics Demo
//
//  Created by Jose Martins on 21/03/21.
//

import UIKit

class BaseTableViewController<T: BaseTableViewCell<U>, U>: UITableViewController {
    
    let cellId = "cellId"
    
    var items = [U]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(T.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! BaseTableViewCell<U>
        cell.item = items[indexPath.row]
        return cell
    }
    
}
