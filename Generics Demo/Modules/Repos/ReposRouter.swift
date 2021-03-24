//
//  ReposRouter.swift
//
//  Created by José Martins on 24/03/2021.
//

import UIKit

class ReposRouter: BaseRouter<ReposViewController> {
    
    override init() {
        super.init()
        
        viewController = ReposViewController()
        
        let presenter = ReposPresenter(delegate: viewController)
        presenter.router = self
        presenter.repository = ReposRepository()
        
        viewController.presenter = presenter
    }
}
