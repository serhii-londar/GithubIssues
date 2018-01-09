//
//  ViewController.swift
//  GithubIssues
//
//  Created by serhii-londar on 12/19/2017.
//  Copyright (c) 2017 serhii-londar. All rights reserved.
//

import UIKit
import GithubIssues

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func presentButtonPressed(_ sender: Any) {
        GithubIssuesHelper(config: GithubIssuesConfig(owner: "serhii-londar", repository: "GithubIssues", token: "token")).present(on: self) { (success, error) in
            
        }
    }
}

