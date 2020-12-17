//
//  NetworkManager.swift
//  GoRestTest
//
//  Created by Rodrigo Hernández Gómez on 17/12/2020.
//  Copyright © 2020 Rodrigo Hernández Gómez. All rights reserved.
//

import Foundation

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
    
    static let ACCESS_TOKEN = "*****"
    
    //TODO
    func getUsers() {
        <#code#>
    }
    
    //TODO
    func postUser() {
        <#code#>
    }
    
    //TODO
    func patchUser() {
        <#code#>
    }
    
    //TODO
    func putUser() {
        <#code#>
    }
    
    //TODO
    func deleteUser() {
        <#code#>
    }
    
}
