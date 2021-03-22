//
//  BaseRepository.swift
//  Generics Demo
//
//  Created by Jose Martins on 22/03/21.
//

import Foundation


struct APIResponseError: Codable {
    var message: String
    var documentation_url: String
}

class BaseRepository {
    func request<TRequestResponse: Codable, TRequestError: Codable>(
        endpoint: String,
        type: RequestType = .get,
        responseType: TRequestResponse.Type,
        errorType: TRequestError.Type,
        completion: @escaping (_ response: TRequestResponse?, _ error: TRequestError?, _ statusCode: Int?) -> Void ) {
        
        DispatchQueue.global().async {
            
            let request = NSMutableURLRequest()
            
            request.httpMethod = self.getRequestTypeString(type)
            request.timeoutInterval = 20
            request.cachePolicy = .useProtocolCachePolicy
            request.url = URL(string: Constants.API.BaseURL + endpoint)
            
            request.setValue("*/*", forHTTPHeaderField: "Accept")
            request.setValue("no-cache", forHTTPHeaderField: "Cache-Control")
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            print("------------------------------------------------------------------")
            print("Request URL: \(request.url!.absoluteString)")
            print("Request Type: \(request.httpMethod)")
            print("------------------------------------------------------------------")
            
            URLSession.shared.dataTask(with: request as URLRequest) { (data, response, error) in
                
                DispatchQueue.main.async {
                    do {
                        if let responseData = data {
                            
                            let statusCode = response?.getStatusCode()
                            
                            guard error == nil else {
                                
                                let obj = try JSONDecoder().decode(TRequestError.self, from: responseData)
                                completion(nil, obj, statusCode)
                                
                                return
                            }
                            
                            let obj = try JSONDecoder().decode(TRequestResponse.self, from: responseData)
                            completion(obj, nil, statusCode)
                        }
                        
                    } catch {
                        print(error)
                        completion(nil, nil, nil)
                    }
                }
                
            }.resume()
        }
        
    }
    
    fileprivate func getRequestTypeString(_ type: RequestType) -> String {
        switch type {
        
        case .get:
            return "GET"
            
        case .patch:
            return "PATCH"
            
        case .put:
            return "PUT"
            
        case .post:
            return "POST"
            
        case .delete:
            return "DELETE"
            
        case .formEncoded:
            return "POST"
        }
    }
    
}
