//
//  <#moduleName#>Router.swift
//
//  Created by <#dev name#> on <#file creation date m/d/y#>.
//  Copyright © <#year#> Madeinweb. All rights reserved.
//

import UIKit

class <#moduleName#>Router: BaseRouter {
    
    let storyboard = UIStoryboard(name: "<#storyboardName#>", bundle: nil)
    
    override init() {
        super.init()
        
        let vc = storyboard.instantiateViewController(withIdentifier: "<#viewId#>")
        
        if let controller = vc as? <#moduleName#>ViewController {
            
            let presenter = <#moduleName#>Presenter(delegate: controller)
            controller.presenter = presenter
            controller.presenter.view = viewController
            controller.presenter.router = self
            
            viewController = controller
        }
    }
}
