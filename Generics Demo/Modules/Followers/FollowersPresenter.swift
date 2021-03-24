//
//  FollowersPresenter.swift
//
//  Created by José Martins on 22/03/2021.
//

import Foundation

//-----------------------------------------------------------------------
//  MARK: - Presenter Delegate
//-----------------------------------------------------------------------

protocol FollowersPresenterDelegate: BasePresenterDelegate {
    func dataLoaded(followers: [Follower])
}

//-----------------------------------------------------------------------
//  MARK: - Presenter
//-----------------------------------------------------------------------

final class FollowersPresenter: BasePresenter<FollowersRouter, FollowersRepository, FollowersViewController> {
    
    var delegate: FollowersPresenterDelegate!
    
    init (delegate: FollowersPresenterDelegate!) {
        self.delegate = delegate
        
        super.init()
    }
    
    func loadData() {
        if let gitHubUser = Session.get()?.login {
            self.repository.loadFollowers(gitHubUser: gitHubUser) { (response, error) in
                if let response = response {
                    self.delegate.dataLoaded(followers: response)
                    return
                }
                
                if let error = error {
                    self.delegate.alert(error.message, .error)
                    return
                }
                
                self.delegate.alert(Constants.Message.FollowerLoadError, .error)
            }
        }
    }
}
