//
//  FollowersViewController.swift
//
//  Created by José Martins on 22/03/2021.
//

import UIKit

class FollowersViewController: BaseTableViewController<FollowersCell, Follower>,
                               FollowersPresenterDelegate {
    
    var presenter: FollowersPresenter!
    
    // MARK: - BaseTableViewController
    
    override func configUI() {
        super.configUI()
    }
    
    override func loadUI() {
        super.loadUI()
        
        presenter.loadData()
    }
    
    // MARK: - PresenterDelegate
    
    func dataLoaded(followers: [Follower]) {
        items = followers
        tableView.reloadData()
    }
}
