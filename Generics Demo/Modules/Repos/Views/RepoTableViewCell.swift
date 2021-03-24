//
//  RepoTableViewCell.swift
//  Generics Demo
//
//  Created by Jose Martins on 24/03/21.
//

import UIKit

class RepoTableViewCell: BaseTableViewCell<Repo> {
    override var item: Repo! {
        didSet {
            textLabel?.text = item.name
        }
    }
}
