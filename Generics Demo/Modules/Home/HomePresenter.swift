//
//  HomePresenter.swift
//
//  Created by José Martins on 22/03/2021.
//

import Foundation

//-----------------------------------------------------------------------
//  MARK: - Presenter Delegate
//-----------------------------------------------------------------------

protocol HomePresenterDelegate: BasePresenterDelegate {
    func dataLoaded()
}

//-----------------------------------------------------------------------
//  MARK: - Presenter
//-----------------------------------------------------------------------

class HomePresenter: BasePresenter<HomeRouter, HomeViewController, HomeRepository> {
    
    var delegate: HomePresenterDelegate!
    
    init (delegate: HomePresenterDelegate!) {
        self.delegate = delegate
        
        super.init()
    }
    
    func routeToRepositories() {
        self.router.routeToRepositories()
    }
    
    func routeToFollowers() {
        self.router.routeToFollowers()
    }
    
    func logOut() {
        Session.logout()
        self.router.routeToLogin()
    }
}
