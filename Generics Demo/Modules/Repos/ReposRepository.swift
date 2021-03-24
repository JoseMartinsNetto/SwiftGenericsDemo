//
//  ReposManager.swift
//
//  Created by José Martins on 24/03/2021.
//

import Foundation

class ReposRepository: BaseRepository {
    func loadData(gitHubUser: String, completion: @escaping (_ response: [Repo]?, _ error: APIResponseError?) -> Void) {
        let endpoint = Constants.API.Endpoint.Repos.replacingOccurrences(of: "{userName}", with: gitHubUser)
        
        self.request(endpoint: endpoint,
                     type: .get,
                     responseType: [Repo].self) { (data: [Repo]?, error: APIResponseError?, code) in
            completion(data, error)
        }
    }
}
