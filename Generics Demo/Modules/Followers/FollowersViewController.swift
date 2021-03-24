//
//  FollowersViewController.swift
//
//  Created by José Martins on 22/03/2021.
//

import UIKit

final class FollowersViewController: BaseTableViewController<FollowersTableViewCell, Follower>,
                               FollowersPresenterDelegate {
    
    var presenter: FollowersPresenter!
    
    // MARK: - BaseTableViewController
    
    override func configUI() {
        super.configUI()
        navigationItem.title = Constants.ScreenTitles.Followers
        
        tableView.alpha = 0
    }
    
    override func loadUI() {
        super.loadUI()
        
        presenter.loadData()
    }
    
    override func viewDidLayoutSubviews() {
        view.layoutIfNeeded()
    }
    
    // MARK: - UITableView
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: - PresenterDelegate
    
    func dataLoaded(followers: [Follower]) {
        items = followers
        tableView.reloadData()
        
        AnimationsUtils.makeBasicAnimation(in: self.view) {
            self.tableView.alpha = 1
        }
        
    }
}
