//
//  GithubIssuesVCViewController.swift
//  GithubIssues
//
//  Created by Serhii Londar on 1/8/18.
//

import UIKit
import GithubAPI

public class GithubIssuesVC: UIViewController {
    @IBOutlet weak var titleTextField: UITextField! = nil
    @IBOutlet weak var bodyTextView: UITextView! = nil
    @IBOutlet weak var sendButton: UIButton! = nil
    var config: GithubIssuesConfig! = nil
    var completion: ((Bool?, Error?) -> Void)! = nil
    
    public static var storyboardInstanse: GithubIssuesVC {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle(for: GithubIssuesVC.self))
        let vc = storyboard.instantiateViewController(withIdentifier: "GithubIssuesVC") as! GithubIssuesVC
        return vc
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.placeholder = "Issue Title"
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        if let titleText = self.titleTextField.text {
            var issue = Issue(title: titleText)
            issue.body = bodyTextView.text
            IssuesAPI(authentication: TokenAuthentication(token: config.token)).createIssue(owner: config.owner, repository: config.repository, issue: issue, completion: { (response, error) in
                if response != nil {
                    self.dismiss(animated: true, completion: nil)
                    self.completion(true, nil)
                } else {
                    self.dismiss(animated: true, completion: nil)
                    self.completion(false, error)
                }
            })
        }
    }
}
