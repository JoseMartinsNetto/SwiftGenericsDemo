//
//  HomeRouter.swift
//
//  Created by José Martins on 22/03/2021.
//

import UIKit

class HomeRouter: BaseRouter<HomeViewController> {
    
    let storyboard = UIStoryboard(name: "Home", bundle: nil)
    
    override init() {
        super.init()
        
        if let controller = storyboard.instantiateViewController(withIdentifier: "HomeView") as? HomeViewController {
            viewController = controller
            
            let presenter = HomePresenter(delegate: viewController)
            presenter.router = self
            
            viewController.presenter = presenter
        }
    }
}
