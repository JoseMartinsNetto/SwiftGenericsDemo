//
//  <#moduleName#>ViewController.swift
//
//  Created by <#dev name#> on <#file creation date m/d/y#>.
//  Copyright © <#year#> Madeinweb. All rights reserved.
//

import UIKit

class <#moduleName#>ViewController: BaseViewController, <#moduleName#>PresenterDelegate {
    
    var presenter: <#moduleName#>Presenter!
    
    //-----------------------------------------------------------------------
    //  MARK: - UIViewController
    //-----------------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadUI()
    }
    
    //-----------------------------------------------------------------------
    //  MARK: - Presenter Delegate
    //-----------------------------------------------------------------------
    
    func dataLoaded() { }
    
    func loading(_ loading: Bool) {
        Util.AnimationsUtils(loading)
    }
    
    func message(message: String?, type: MessageType) {
        Util.showMessage(message, type)
    }
    
    //-----------------------------------------------------------------------
    //  MARK: - Custom methods
    //-----------------------------------------------------------------------
    
    func configUI() { }
    
    func loadUI() { }
}
