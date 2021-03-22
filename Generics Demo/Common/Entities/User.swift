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
    var name: String
    var company: String?
    var blog, location: String
    var email, hireable: String?
    var bio, twitterUsername: String
    var publicRepos, publicGists, followers, following: Int
    var createdAt, updatedAt: Date
    
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
        siteAdmin: Bool,
        name: String,
        company: String?,
        blog: String,
        location: String,
        email: String?,
        hireable: String?,
        bio: String,
        twitterUsername: String,
        publicRepos: Int,
        publicGists: Int,
        followers: Int,
        following: Int,
        createdAt: Date,
        updatedAt: Date
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
        self.name = name
        self.company = company
        self.blog = blog
        self.location = location
        self.email = email
        self.hireable = hireable
        self.bio = bio
        self.twitterUsername = twitterUsername
        self.publicRepos = publicRepos
        self.publicGists = publicGists
        self.followers = followers
        self.following = following
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        login = try values.decode(String.self, forKey: .login)
        id = try values.decode(Int.self, forKey: .id)
        nodeID = try values.decode(String.self, forKey: .nodeID)
        avatarURL = try values.decode(String.self, forKey: .avatarURL)
        gravatarID = try values.decode(String.self, forKey: .gravatarID)
        url = try values.decode(String.self, forKey: .url)
        htmlURL = try values.decode(String.self, forKey: .htmlURL)
        followersURL = try values.decode(String.self, forKey: .followersURL)
        followingURL = try values.decode(String.self, forKey: .followingURL)
        gistsURL = try values.decode(String.self, forKey: .gistsURL)
        starredURL = try values.decode(String.self, forKey: .starredURL)
        subscriptionsURL = try values.decode(String.self, forKey: .subscriptionsURL)
        organizationsURL = try values.decode(String.self, forKey: .organizationsURL)
        reposURL = try values.decode(String.self, forKey: .reposURL)
        eventsURL = try values.decode(String.self, forKey: .eventsURL)
        receivedEventsURL = try values.decode(String.self, forKey: .receivedEventsURL)
        type = try values.decode(String.self, forKey: .type)
        siteAdmin = try values.decode(Bool.self, forKey: .siteAdmin)
        name = try values.decode(String.self, forKey: .name)
        company = try values.decodeIfPresent(String.self, forKey: .company)
        blog = try values.decode(String.self, forKey: .blog)
        location = try values.decode(String.self, forKey: .location)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        hireable = try values.decodeIfPresent(String.self, forKey: .hireable)
        bio = try values.decode(String.self, forKey: .bio)
        twitterUsername = try values.decode(String.self, forKey: .twitterUsername)
        publicRepos = try values.decode(Int.self, forKey: .publicRepos)
        publicGists = try values.decode(Int.self, forKey: .publicGists)
        followers = try values.decode(Int.self, forKey: .followers)
        following = try values.decode(Int.self, forKey: .following)
        
        let str_created_at = try values.decode(String.self, forKey: .createdAt)
        let str_updated_at = try values.decode(String.self, forKey: .updatedAt)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        formatter.locale = Locale(identifier: "pt-br")
        formatter.timeZone = TimeZone(abbreviation: "GMT-3")
        
        createdAt = formatter.date(from: str_created_at)!
        updatedAt = formatter.date(from: str_updated_at)!

    }
}
