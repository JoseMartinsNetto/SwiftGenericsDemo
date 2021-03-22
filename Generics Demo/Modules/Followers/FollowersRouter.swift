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
        
        let presenter = FollowersPresenter(delegate: controller)
        
        presenter.router = self
        
        controller.presenter = presenter
        
        viewController = controller
    }
}
