//
//  ReposCell.swift
//  Generics Demo
//
//  Created by Jose Martins on 22/03/21.
//

import Foundation

class FollowersCell: BaseTableViewCell<Follower> {
    override var item: Follower! {
        didSet {
            textLabel?.text = item.userName
        }
    }
}
