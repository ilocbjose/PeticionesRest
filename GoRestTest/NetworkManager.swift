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
        
        let URLUser = "https://gorest.co.in/public-api/posts?acces-token=" + Network.ACCESS_TOKEN
        
        URLSession.shared.dataTask(with: URL(string: URLUser)!){
            data,response,error in
            
            debugPrint(response)
        }.resume()
        
        AF.request("https://gorest.co.in/public-api/posts?acces-token=" + Network.ACCESS_TOKEN ,method: .get).response { response in
            debugPrint(response)
        }
    }
    
    //TODO
    func postUser() {
        
        let URLUser = "https://gorest.co.in/public-api/users?acces-token=" + Network.ACCESS_TOKEN
        
        URLSession.shared.dataTask(with: URL(string: URLUser)!){
            data,response,error in
            
            debugPrint(response)
        }.resume()
        
        
        AF.request("https://gorest.co.in/public-api/users?acces-token=" + Network.ACCESS_TOKEN ,method: .post).response { response in
        debugPrint(response)
        }
    }
    
    //TODO
    func patchUser() {
        
        let URLUser = "https://gorest.co.in/public-api/comments?acces-token=" + Network.ACCESS_TOKEN
        
        URLSession.shared.dataTask(with: URL(string: URLUser)!){
            data,response,error in
            
            debugPrint(response)
        }.resume()
        
        AF.request("https://gorest.co.in/public-api/comments?acces-token=" + Network.ACCESS_TOKEN,method: .patch).response { response in
        debugPrint(response)
        }
    }
    
    //TODO
    func putUser() {
        
        let URLUser = "https://gorest.co.in/public-api/todos?acces-token=" + Network.ACCESS_TOKEN
        
        URLSession.shared.dataTask(with: URL(string: URLUser)!){
            data,response,error in
            
            debugPrint(response)
        }.resume()
        
        AF.request("https://gorest.co.in/public-api/todos?acces-token=" + Network.ACCESS_TOKEN,method: .put).response { response in
        debugPrint(response)
        }

    }
    
    //TODO
    func deleteUser() {
        
        let URLUser = "https://gorest.co.in/public-api/categories?acces-token=" + Network.ACCESS_TOKEN
        
        URLSession.shared.dataTask(with: URL(string: URLUser)!){
            data,response,error in
            
            debugPrint(response)
        }.resume()
        
        AF.request("https://gorest.co.in/public-api/categories?acces-token=" + Network.ACCESS_TOKEN,method: .delete).response { response in
        debugPrint(response)
        }

    }
    
}
