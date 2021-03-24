//
//  <#moduleName#>Router.swift
//
//  Created by <#dev name#> on <#file creation date m/d/y#>.
//

import UIKit

class <#moduleName#>Router: BaseRouter< <#moduleName#>ViewController >  {
    
    let storyboard = UIStoryboard(name: "<#storyboardName#>", bundle: nil)
    
    override init() {
        super.init()
        
        if let controller =  storyboard.instantiateViewController(withIdentifier: "<#viewId#>") as?  <#moduleName#>ViewController  {
            viewController = controller
            
            let presenter = <#moduleName#>Presenter(delegate: controller)
            
            presenter.repository = LoginRepository()
            presenter.router = self
            
            viewController.presenter = presenter
        }
    }
}
