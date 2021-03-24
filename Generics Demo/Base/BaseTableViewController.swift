//
//  BaseTableViewController.swift
//  Generics Demo
//
//  Created by Jose Martins on 21/03/21.
//

import UIKit

class BaseTableViewController<T: BaseTableViewCell<U>, U>: UITableViewController,
                                                           BasePresenterDelegate,
                                                           BaseViewControllerProtocol{
    
    let cellId = "cellId"
    
    var items = [U]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(T.self, forCellReuseIdentifier: cellId)
        configUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadUI()
    }
    
    // MARK: - UITableViewController
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! BaseTableViewCell<U>
        cell.item = items[indexPath.row]
        return cell
    }
    
    // MARK: - BaseViewControllerProtocol
    
    func configUI() {
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        view.backgroundColor = Constants.UI.Colors.DarkGray
        
        tableView.backgroundColor = Constants.UI.Colors.DarkGray
        tableView.separatorStyle = .none
    }
    
    func loadUI() { }
    
    // MARK: - BasePresenterDelegate
    
    func alert(_ message: String, _ type: MessageType) {
        AlertHelper.showAlert(message: message, type: type)
    }
    
    func loading(_ loading: Bool) {
        AnimationsUtils.loading(loading)
    }
    
    
}
