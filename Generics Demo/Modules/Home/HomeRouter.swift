//
//  HomeRouter.swift
//
//  Created by José Martins on 22/03/2021.
//

import UIKit

class HomeRouter: BaseRouter {
    
    let storyboard = UIStoryboard(name: "Home", bundle: nil)
    
    override init() {
        super.init()
        
        let vc = storyboard.instantiateViewController(withIdentifier: "HomeView")
        
        if let controller = vc as? HomeViewController {
            viewController = controller
            
            let presenter = HomePresenter(delegate: controller)
            presenter.router = self
            
            controller.presenter = presenter
        }
    }
}
