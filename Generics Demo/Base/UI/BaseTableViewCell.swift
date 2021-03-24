//
//  BaseTableViewCell.swift
//  Generics Demo
//
//  Created by Jose Martins on 21/03/21.
//

import UIKit

class BaseTableViewCell<U>: UITableViewCell {
    var item: U!    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        backgroundColor =  Constants.UI.Colors.DarkGray
        textLabel!.textColor = Constants.UI.Colors.White
    }
}
