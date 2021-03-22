//
//  LoginViewController.swift
//
//  Created by José Martins on 22/03/2021.
//

import UIKit

class LoginViewController: BaseViewController,
                           LoginPresenterDelegate {
    
    var presenter: LoginPresenter!
    
    @IBOutlet var txtUserNameField: UITextField!
    @IBOutlet var btnLogin: UIButton!
    @IBOutlet var actLoginLoading: UIActivityIndicatorView!
    
    //-----------------------------------------------------------------------
    //  MARK: - UIViewController, BaseViewController
    //-----------------------------------------------------------------------    
    
    override func configUI() { }
    
    override func loadUI() { }
    
    //-----------------------------------------------------------------------
    //  MARK: - LoginPresenterDelegate
    //-----------------------------------------------------------------------
    
    override func loading(_ loading: Bool) {
        if loading {
            actLoginLoading.startAnimating()
            btnLogin.setTitle("", for: .normal)
            return
        }
        
        actLoginLoading.stopAnimating()
        btnLogin.setTitle(Constants.Strings.Login, for: .normal)
    }
    
    //-----------------------------------------------------------------------
    //  MARK: - Custom methods
    //-----------------------------------------------------------------------
    
    @IBAction func makeLogin(_ sender: UIButton) {
        view.endEditing(true)
        
        presenter.makeLogin(gitHubUser: txtUserNameField.text)
    }
}
