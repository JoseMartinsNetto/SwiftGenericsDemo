//
//  LoginViewController.swift
//
//  Created by José Martins on 22/03/2021.
//

import UIKit

class LoginViewController: BaseViewController,
                           LoginPresenterDelegate {
    
    var presenter: LoginPresenter!
    
    //-----------------------------------------------------------------------
    //  MARK: - UIViewController, BaseViewController
    //-----------------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadUI()
    }
    
    
    override func configUI() { }
    
    override func loadUI() { }
    
    //-----------------------------------------------------------------------
    //  MARK: - LoginPresenterDelegate
    //-----------------------------------------------------------------------
    
    func dataLoaded() { }
    
    //-----------------------------------------------------------------------
    //  MARK: - Custom methods
    //-----------------------------------------------------------------------
    
}
