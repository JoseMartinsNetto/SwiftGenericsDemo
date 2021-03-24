//
//  FollowersRepository.swift
//
//  Created by José Martins on 22/03/2021.
//

import Foundation

class FollowersRepository: BaseRepository {
    func loadFollowers(gitHubUser: String, completion: @escaping(_ repsonse: [Follower]?, _ error: APIResponseError?) -> Void) {
        let endpoint = Constants.API.Endpoint.Followers.replacingOccurrences(of: "{userName}", with: gitHubUser)
        
        self.request(endpoint: endpoint,
                     responseType: [Follower].self) { (data: [Follower]?, error: APIResponseError?, code) in
            completion(data, error)
        }
    }
}
