//
//  User.swift
//  Generics Demo
//
//  Created by Jose Martins on 21/03/21.
//

import Foundation

struct User: Codable {
    var login: String
    var id: Int
    var nodeID: String
    var avatarURL: String
    var gravatarID: String
    var url, htmlURL, followersURL: String
    var followingURL, gistsURL, starredURL: String
    var subscriptionsURL, organizationsURL, reposURL: String
    var eventsURL: String
    var receivedEventsURL: String
    var type: String
    var siteAdmin: Bool
    
     init(
        login: String,
        id: Int,
        nodeID: String,
        avatarURL: String,
        gravatarID: String,
        url: String,
        htmlURL: String,
        followersURL: String,
        followingURL: String,
        gistsURL: String,
        starredURL: String,
        subscriptionsURL: String,
        organizationsURL: String,
        reposURL: String,
        eventsURL: String,
        receivedEventsURL: String,
        type: String,
        siteAdmin: Bool
    )  {
        self.login = login
        self.id = id
        self.nodeID = nodeID
        self.avatarURL = avatarURL
        self.gravatarID = gravatarID
        self.url = url
        self.htmlURL = htmlURL
        self.followersURL = followersURL
        self.followingURL = followingURL
        self.gistsURL = gistsURL
        self.starredURL = starredURL
        self.subscriptionsURL = subscriptionsURL
        self.organizationsURL = organizationsURL
        self.reposURL = reposURL
        self.eventsURL = eventsURL
        self.receivedEventsURL = receivedEventsURL
        self.type = type
        self.siteAdmin = siteAdmin
    }
}
