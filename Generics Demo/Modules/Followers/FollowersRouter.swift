//
//  FollowersRouter.swift
//
//  Created by José Martins on 22/03/2021.
//

import UIKit

class FollowersRouter: BaseRouter {
    
    override init() {
        super.init()
        
        let controller = FollowersViewController()
        viewController = controller
        
        let presenter = FollowersPresenter(delegate: controller)
        presenter.router = self
        presenter.repository = FollowersRepository()
        
        controller.presenter = presenter
        
    }
}
