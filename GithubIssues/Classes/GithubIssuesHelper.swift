//
//  GithubIssuesHelper.swift
//  GithubIssues
//
//  Created by Serhii Londar on 1/10/18.
//

import Foundation

public class GithubIssuesHelper {
    let config: GithubIssuesConfig
    
    public init(config: GithubIssuesConfig) {
        self.config = config
    }
    
    public func present(on vc: UIViewController, completion: @escaping(Bool?, Error?) -> Void) {
        let issuesVC = GithubIssuesVC.storyboardInstanse
        issuesVC.config = self.config
        issuesVC.completion = completion
        vc.present(issuesVC, animated: true, completion: nil)
    }
}
