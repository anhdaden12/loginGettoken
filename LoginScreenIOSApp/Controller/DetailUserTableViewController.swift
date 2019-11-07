//
//  DetailUserTableViewController.swift
//  LoginScreenIOSApp
//
//  Created by Apple on 11/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class DetailUserTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }


    @IBAction func onClickLogout(_ sender: Any) {
        
        let alert = UIAlertController(title: "Logout", message: "Are you sure??", preferredStyle: .alert)
        
        let okaction = UIAlertAction(title: "OK", style: .default) { (_) in
            let storyboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "loginscreen")
            storyboard.modalPresentationStyle = .fullScreen
            let loginVC = LoginViewcontroller()
            loginVC.hashToken = false
            UserDefaults.standard.set(loginVC.hashToken, forKey: "hashToken")
            self.present(storyboard, animated: true, completion: nil)
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(okaction)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
}
