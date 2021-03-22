//
//  BaseViewController.swift
//  Generics Demo
//
//  Created by Jose Martins on 22/03/21.
//

import UIKit

protocol BaseViewControllerProtocol {
    func configUI()
    func loadUI()
}

class BaseViewController: UIViewController,
                          BaseViewControllerProtocol,
                          BasePresenterDelegate {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // MARK: - BaseViewControllerProtocol
    
    func configUI() { }
    
    func loadUI() { }
    
    
    // MARK: - BasePresenterDelegate
    
    func message(message: String?, type: MessageType) { }
    
    func loading(_ loading: Bool) { }
    
    
}
