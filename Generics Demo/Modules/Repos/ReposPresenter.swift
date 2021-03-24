//
//  ReposPresenter.swift
//
//  Created by José Martins on 24/03/2021.
//

import Foundation

//  MARK: - Presenter Delegate

protocol ReposPresenterDelegate: BasePresenterDelegate {
    func dataLoaded(repos: [Repo])
}

//  MARK: - Presenter

class ReposPresenter: BasePresenter< ReposRouter, ReposRepository, ReposViewController> {
    
    var delegate: ReposPresenterDelegate!
    
    init (delegate: ReposPresenterDelegate!) {
        self.delegate = delegate
        
        super.init()
    }
    
    func loadData() {
        if let user = Session.get()?.login {
            delegate.loading(true)
            self.repository.loadData(gitHubUser: user) { (response, error) in
                
                self.delegate.loading(false)
                
                if let repos = response {
                    self.delegate.dataLoaded(repos: repos)
                    return
                }
                
                if let error = error {
                    self.delegate.alert(error.message, .error)
                    return
                }
                
                self.delegate.alert(Constants.Message.ReposLoadError, .error)
            }
        }
    }
}
