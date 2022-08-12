//
//  User.swift
//  Twitter
//
//  Created by Victor Han on 2022/8/12.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
