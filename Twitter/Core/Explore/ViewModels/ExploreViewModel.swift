//
//  ExploreViewModel.swift
//  Twitter
//
//  Created by Victor Han on 2022/8/12.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    @Published var searchText = ""
    
    var searchableUsers: [User] {
        if searchText.isEmpty {
           return users
        } else {
            let lowercasedQuery = searchText.lowercased()
            return users.filter({
                $0.username.contains(lowercasedQuery) ||
                $0.fullname.lowercased().contains(lowercasedQuery)
            })
        }
    }
    
    let service = UserService()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers(){
        service.fetchUsers { users in
            self.users = users
        }
    }
}
