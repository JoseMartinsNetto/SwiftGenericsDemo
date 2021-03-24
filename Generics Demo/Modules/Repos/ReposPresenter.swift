//
//  ReposPresenter.swift
//
//  Created by José Martins on 24/03/2021.
//

import Foundation

//  MARK: - Presenter Delegate

protocol ReposPresenterDelegate: BasePresenterDelegate {
    func dataLoaded()
}

//  MARK: - Presenter

class ReposPresenter: BasePresenter< ReposRouter, ReposRepository, ReposViewController> {
    
    var delegate: ReposPresenterDelegate!
    
    init (delegate: ReposPresenterDelegate!) {
        self.delegate = delegate
        
        super.init()
    }
    
    func loadData() {
        
    }
}
