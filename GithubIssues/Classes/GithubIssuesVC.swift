//
//  GithubIssuesVCViewController.swift
//  GithubIssues
//
//  Created by Serhii Londar on 1/8/18.
//

import UIKit
//import GithubAPI

public class GithubIssuesVC: UIViewController {
    @IBOutlet weak var titleTextField: UITextField! = nil
    @IBOutlet weak var bodyTextView: UITextView! = nil
    @IBOutlet weak var sendButton: UIButton! = nil
    
    public var storyboardInstanse: GithubIssuesVC {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle(for: GithubIssuesVC.self))
        let vc = storyboard.instantiateViewController(withIdentifier: "GithubIssuesVC") as! GithubIssuesVC
        return vc
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.placeholder = "Issue Title"
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        
    }
}
