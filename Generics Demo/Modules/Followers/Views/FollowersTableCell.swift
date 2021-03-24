//
//  FollowersTableViewCell.swift
//  Generics Demo
//
//  Created by Jose Martins on 22/03/21.
//

import UIKit

class FollowersTableViewCell: BaseTableViewCell<Follower> {
    override var item: Follower! {
        didSet {
            textLabel?.text = item.userName
        }
    }
}
