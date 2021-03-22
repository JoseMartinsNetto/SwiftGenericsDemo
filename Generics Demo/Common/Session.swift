//
//  Session.swift
//  Generics Demo
//
//  Created by Jose Martins on 21/03/21.
//

import Foundation

class Session: NSObject {
    static func set(_ user: User) {
        
        let defaults = UserDefaults.standard
        
        defaults.setValue(user.login, forKey: "User_login")
        defaults.setValue(user.id, forKey: "User_id")
        defaults.setValue(user.nodeID, forKey: "User_node_id")
        defaults.setValue(user.avatarURL, forKey: "User_avatar_url")
        defaults.setValue(user.gravatarID, forKey: "User_gravatar_id")
        defaults.setValue(user.url, forKey: "User_url")
        defaults.setValue(user.htmlURL, forKey: "User_html_url")
        defaults.setValue(user.followersURL, forKey: "User_followers_url")
        defaults.setValue(user.followingURL, forKey: "User_following_url")
        defaults.setValue(user.gistsURL, forKey: "User_gists_url")
        defaults.setValue(user.starredURL, forKey: "User_starred_url")
        defaults.setValue(user.subscriptionsURL, forKey: "User_subscriptions_url")
        defaults.setValue(user.organizationsURL, forKey: "User_organizations_url")
        defaults.setValue(user.reposURL, forKey: "User_repos_url")
        defaults.setValue(user.eventsURL, forKey: "User_events_url")
        defaults.setValue(user.receivedEventsURL, forKey: "User_received_events_url")
        defaults.setValue(user.type, forKey: "User_type")
        defaults.setValue(user.siteAdmin, forKey: "User_site_admin")
        defaults.setValue(user.name, forKey: "User_name")
        defaults.setValue(user.company, forKey: "User_company")
        defaults.setValue(user.blog, forKey: "User_blog")
        defaults.setValue(user.location, forKey: "User_location")
        defaults.setValue(user.email, forKey: "User_email")
        defaults.setValue(user.hireable, forKey: "User_hireable")
        defaults.setValue(user.bio, forKey: "User_bio")
        defaults.setValue(user.twitterUsername, forKey: "User_twitter_username")
        defaults.setValue(user.publicRepos, forKey: "User_public_repos")
        defaults.setValue(user.publicGists, forKey: "User_public_gists")
        defaults.setValue(user.followers, forKey: "User_followers")
        defaults.setValue(user.following, forKey: "User_following")
        defaults.setValue(user.createdAt, forKey: "User_created_at")
        defaults.setValue(user.updatedAt, forKey: "User_updated_at")
        
        defaults.synchronize()
        
    }
    
    static func get() -> User? {
        
        let defaults = UserDefaults.standard
        
        if let login = defaults.object(forKey: "User_login") as? String, !login.isEmpty {
            
            let id = defaults.object(forKey: "User_id") as? Int
            let node_id = defaults.object(forKey: "User_node_id") as? String
            let avatar_url = defaults.object(forKey: "User_avatar_url") as? String
            let gravatar_id = defaults.object(forKey: "User_gravatar_id") as? String
            let url = defaults.object(forKey: "User_url") as? String
            let html_url = defaults.object(forKey: "User_html_url") as? String
            let followers_url = defaults.object(forKey: "User_followers_url") as? String
            let following_url = defaults.object(forKey: "User_following_url") as? String
            let gists_url = defaults.object(forKey: "User_gists_url") as? String
            let starred_url = defaults.object(forKey: "User_starred_url") as? String
            let subscriptions_url = defaults.object(forKey: "User_subscriptions_url") as? String
            let organizations_url = defaults.object(forKey: "User_organizations_url") as? String
            let repos_url = defaults.object(forKey: "User_repos_url") as? String
            let events_url = defaults.object(forKey: "User_events_url") as? String
            let received_events_url = defaults.object(forKey: "User_received_events_url") as? String
            let type = defaults.object(forKey: "User_type") as? String
            let site_admin = defaults.object(forKey: "User_site_admin") as? Bool
            let name = defaults.object(forKey: "User_name") as? String
            let company = defaults.object(forKey: "User_company") as? String
            let blog = defaults.object(forKey: "User_blog") as? String
            let location = defaults.object(forKey: "User_location") as? String
            let email = defaults.object(forKey: "User_email") as? String
            let hireable = defaults.object(forKey: "User_hireable") as? String
            let bio = defaults.object(forKey: "User_bio") as? String
            let twitter_username = defaults.object(forKey: "User_twitter_username") as? String
            let public_repos = defaults.object(forKey: "User_public_repos") as? Int
            let public_gists = defaults.object(forKey: "User_public_gists") as? Int
            let followers = defaults.object(forKey: "User_followers") as? Int
            let following = defaults.object(forKey: "User_following") as? Int
            let created_at = defaults.object(forKey: "User_created_at") as? Date
            let updated_at = defaults.object(forKey: "User_updated_at") as? Date
            
            let user = User(
                login: login,
                id: id!,
                nodeID: node_id!,
                avatarURL: avatar_url!,
                gravatarID: gravatar_id!,
                url: url!,
                htmlURL: html_url!,
                followersURL: followers_url!,
                followingURL: following_url!,
                gistsURL: gists_url!,
                starredURL: starred_url!,
                subscriptionsURL: subscriptions_url!,
                organizationsURL: organizations_url!,
                reposURL: repos_url!,
                eventsURL: events_url!,
                receivedEventsURL: received_events_url!,
                type: type!,
                siteAdmin: site_admin!,
                name: name!,
                company: company!,
                blog: blog!,
                location: location!,
                email: email,
                hireable: hireable,
                bio: bio!,
                twitterUsername: twitter_username!,
                publicRepos: public_repos!,
                publicGists: public_gists!,
                followers: followers!,
                following: following!,
                createdAt: created_at!,
                updatedAt: updated_at!
            )
            
            return user
            
        }
        
        
        return nil
    }
}
