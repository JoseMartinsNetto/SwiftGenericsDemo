//
//  FollowersRouter.swift
//
//  Created by José Martins on 22/03/2021.
//

import UIKit

final class FollowersRouter: BaseRouter<FollowersViewController> {
    
    override init() {
        super.init()
        
        viewController = FollowersViewController()
        
        let presenter = FollowersPresenter(delegate: viewController)
        presenter.router = self
        presenter.repository = FollowersRepository()
        
        viewController.presenter = presenter
        
    }
}
