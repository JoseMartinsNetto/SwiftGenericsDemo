//
//  <#moduleName#>Presenter.swift
//
//  Created by <#dev name#> on <#file creation date m/d/y#>.
//  Copyright © <#year#> Madeinweb. All rights reserved.
//

import Foundation

//-----------------------------------------------------------------------
//  MARK: - Presenter Delegate
//-----------------------------------------------------------------------

protocol <#moduleName#>PresenterDelegate: BasePresenterDelegate {
    func dataLoaded()
}

//-----------------------------------------------------------------------
//  MARK: - Presenter
//-----------------------------------------------------------------------

class <#moduleName#>Presenter: BasePresenter {
    
    var delegate: <#moduleName#>PresenterDelegate!
    
    init (delegate: <#moduleName#>PresenterDelegate!) {
        self.delegate = delegate
        
        super.init()
    }
}
