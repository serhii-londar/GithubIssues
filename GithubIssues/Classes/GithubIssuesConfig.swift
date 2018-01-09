//
//  GithubIssuesConfig.swift
//  BaseAPI
//
//  Created by Serhii Londar on 1/10/18.
//

import Foundation

public class GithubIssuesConfig {
    let owner: String
    let repository: String
    let token: String
    
    public init(owner: String, repository: String, token: String) {
        self.owner = owner
        self.repository = repository
        self.token = token
    }
}
