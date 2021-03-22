//
//  BasePresenter.swift
//  Generics Demo
//
//  Created by Jose Martins on 22/03/21.
//

import Foundation
import UIKit

protocol BasePresenterDelegate {
    func message(message: String?, type: MessageType)
    func loading(_ loading: Bool)
}

class BasePresenter<T: BaseRouter, U: BaseViewController> {
    
    var view: U!
    var router: T!
    
    func closeView(animated: Bool = true) {
        
        DispatchQueue.main.async {
            self.router.dismiss(animated: animated)
        }
    }
    
    func closeAllViews(animated: Bool = true) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.router.closeAllViews(animated: animated)
        }
    }
}
