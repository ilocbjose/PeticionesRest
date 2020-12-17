//
//  NetworkManager.swift
//  GoRestTest
//
//  Created by Rodrigo Hernández Gómez on 17/12/2020.
//  Copyright © 2020 Rodrigo Hernández Gómez. All rights reserved.
//

import Foundation
import Alamofire

class Network {
    
    static var shared: Network = Network()
    
    
}


protocol GoRestAPI {
    
    func getUsers()
    
    func postUser()
    
    func patchUser()
    
    func putUser()
    
    func deleteUser()
    
}


extension Network: GoRestAPI {
    
    static let ACCESS_TOKEN =
    "8638ff0993002cacd12015f9903b7d6e8b2387cb99c3a6d5045388a6eb287f5b"
   
    
    //TODO
    func getUsers() {
        
        let url = URL(string: "https://gorest.co.in/public-api/posts")!; let task = URLSession.shared.dataTask(with: url) {(data, response, error) in guard let data = data else { return }; print(String(data: data, encoding: .utf8)!) }; task.resume()
        
        AF.request("https://gorest.co.in/public-api/posts",method: .get,encoding: URLEncoding(destination: .queryString)).response { response in
            debugPrint(response)
        }
    }
    
    //TODO
    func postUser() {
        
        struct Login: Encodable{
            
            let token: String
            
        }
        
        let create = Login(token: "8638ff0993002cacd12015f9903b7d6e8b2387cb99c3a6d5045388a6eb287f5b")
        
        
        let url = URL(string: "https://gorest.co.in/public-api/users")!; let task = URLSession.shared.dataTask(with: url) {(data, response, error) in guard let data = data else { return }; print(String(data: data, encoding: .utf8)!) }; task.resume()
        
        AF.request("https://gorest.co.in/public-api/users",method: .post,parameters: create).response { response in
        debugPrint(response)
        }
    }
    
    //TODO
    func patchUser() {
        let url = URL(string: "https://gorest.co.in/public-api/comments")!; let task = URLSession.shared.dataTask(with: url) {(data, response, error) in guard let data = data else { return }; print(String(data: data, encoding: .utf8)!) }; task.resume()
        
        AF.request("https://gorest.co.in/public-api/comments",method: .patch).response { response in
        debugPrint(response)
        }
    }
    
    //TODO
    func putUser() {
        let url = URL(string: "https://gorest.co.in/public-api/todos")!; let task = URLSession.shared.dataTask(with: url) {(data, response, error) in guard let data = data else { return }; print(String(data: data, encoding: .utf8)!) }; task.resume()
        
        AF.request("https://gorest.co.in/public-api/todos",method: .put).response { response in
        debugPrint(response)
        }

    }
    
    //TODO
    func deleteUser() {
        let url = URL(string: "https://gorest.co.in/public-api/posts")!; let task = URLSession.shared.dataTask(with: url) {(data, response, error) in guard let data = data else { return }; print(String(data: data, encoding: .utf8)!) }; task.resume()
        
        AF.request("https://gorest.co.in/public-api/categories",method: .delete).response { response in
        debugPrint(response)
        }

    }
    
}
