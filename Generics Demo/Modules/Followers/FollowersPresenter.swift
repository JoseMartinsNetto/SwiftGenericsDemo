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
    func dataLoaded()
}

//-----------------------------------------------------------------------
//  MARK: - Presenter
//-----------------------------------------------------------------------

class FollowersPresenter: BasePresenter<FollowersRouter, RepositoriesRepository> {
    
    var delegate: FollowersPresenterDelegate!
    
    init (delegate: FollowersPresenterDelegate!) {
        self.delegate = delegate
        
        super.init()
    }
}
