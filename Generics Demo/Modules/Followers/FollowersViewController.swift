//
//  FollowersViewController.swift
//
//  Created by José Martins on 22/03/2021.
//

import UIKit

class FollowersViewController: BaseTableViewController<FollowersCell, Follower>,
                               FollowersPresenterDelegate {
    
    var presenter: FollowersPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = [
            Follower(name: "Donald Trump"),
            Follower(name: "Barack Obama")
        ]
    }
    
    // MARK: - PresenterDelegate
    
    func dataLoaded() {
        
    }
    
    func alert(_ message: String, _ type: MessageType) {
        
    }
    
    func loading(_ loading: Bool) {
        
    }
}
