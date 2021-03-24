//
//  ReposViewController.swift
//
//  Created by José Martins on 24/03/2021.
//

import UIKit

final class ReposViewController: BaseTableViewController<RepoTableViewCell, Repo>,
                                 ReposPresenterDelegate {
    
    var presenter: ReposPresenter!
    
    // MARK: - BaseTableViewController
    
    override func configUI() {
        super.configUI()
        
        navigationItem.title = Constants.ScreenTitles.Repos
    }
    
    override func loadUI() {
        super.loadUI()
        
        presenter.loadData()
    }
    
    // MARK: - PresenterDelegate
    
    func dataLoaded(repos: [Repo]) {
        items = repos
        tableView.reloadData()
    }
}
