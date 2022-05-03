//
//  User.swift
//  Cafe
//
//  Created by seosh on 5/3/22.
//

import Foundation

struct User {
    let userName: String
    let account: String
    
    static let shared = User(userName: "성환", account: "SHSEO")
}
