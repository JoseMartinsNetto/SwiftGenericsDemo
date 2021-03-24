//
//  LoginRouter.swift
//
//  Created by José Martins on 22/03/2021.
//

import UIKit

class LoginRouter: BaseRouter<LoginViewController> {
    
    let storyboard = UIStoryboard(name: "Auth", bundle: nil)
    
    override init() {
        super.init()
        
        if let controller = storyboard.instantiateViewController(withIdentifier: "LoginView") as? LoginViewController {
            viewController = controller
            
            let presenter = LoginPresenter(delegate: controller)
            
            presenter.repository = LoginRepository()
            presenter.router = self
            
            viewController.presenter = presenter
        }
    }
}
