//
//  Constants.swift
//  Generics Demo
//
//  Created by Jose Martins on 22/03/21.
//

import Foundation

class Constants: NSObject {
    struct API {
        static let BaseURL = "https://api.github.com"
        
        struct Endpoint {
            static let UserData = "/users/{userName}"
            static let Followers = "/users/{userName}/followers"
            static let Repositories = "/users/{userName}/repos"
        }
    }
    
    struct Strings {
        static let Login = "Login"
    }
    
    struct Message {
        static let GitHubUserRequired = "O campo usuário do GitHub é Obrigatório"
        static let GitHubUserNotFound = "O usuário do GitHub não foi encontrado"
    }
}
