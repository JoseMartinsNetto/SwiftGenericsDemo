//
//  LoginPresenter.swift
//
//  Created by José Martins on 22/03/2021.
//

import Foundation

//-----------------------------------------------------------------------
//  MARK: - Presenter Delegate
//-----------------------------------------------------------------------

protocol LoginPresenterDelegate: BasePresenterDelegate { }

//-----------------------------------------------------------------------
//  MARK: - Presenter
//-----------------------------------------------------------------------

class LoginPresenter: BasePresenter<LoginRouter, LoginRepository, LoginViewController> {
    
    var delegate: LoginPresenterDelegate!
    
    init (delegate: LoginPresenterDelegate!) {
        self.delegate = delegate
        
        super.init()
    }
    
    func makeLogin(gitHubUser: String?) {
        guard let user = gitHubUser, !user.isEmpty else {
            delegate.alert(Constants.Message.GitHubUserRequired, .warning)
            return
        }
        
        delegate.loading(true)
        
        self.repository.getUserData(userName: user) { (responseUser, error) in
            self.delegate.loading(false)
            
            if let user = responseUser, error == nil {
                Session.set(user)
                self.router.routeToHome()
                return
            }
            
            if let error = error {
                self.delegate.alert(error.message, .error)
                return
            }
            
            self.delegate.alert(Constants.Message.GitHubLoadUserError, .error)
        }
    }
}
