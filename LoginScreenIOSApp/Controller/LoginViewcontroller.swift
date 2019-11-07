//
//  ViewController.swift
//  LoginScreenIOSApp
//
//  Created by Apple on 11/6/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewcontroller: UIViewController {
    
    static let shareIntance = LoginViewcontroller()
    
    @IBOutlet weak var textUsernam: UITextField!
    @IBOutlet weak var textPass: UITextField!
    
    open var hashToken: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTexfield()
        textUsernam.text = "eve.holt@reqres.in"
        textPass.text = "cityslicka"
    }
    
    fileprivate func setupTexfield() {
        textUsernam.layer.borderWidth = 1
        textUsernam.layer.borderColor = UIColor.white.cgColor
        textUsernam.layer.masksToBounds = true
        textUsernam.layer.cornerRadius = 10
        
        textPass.layer.borderWidth = 1
        textPass.layer.borderColor = UIColor.white.cgColor
        textPass.layer.masksToBounds = true
        textPass.layer.cornerRadius = 10
    }
    
    
    
    
    @IBAction func onClickLogin(_ sender: UIButton) {
        guard let textEmail = textUsernam.text else { return }
        guard let textPass = textPass.text else { return }
        guard let url = URL(string: "https://reqres.in/api/login") else { return}
        let parametter = ["email": textEmail, "password" : textPass]
        AF.request(url, method: .post, parameters: parametter).validate().responseJSON { (reponse) in
            
            switch reponse.result {

            case .success(let data):
                let mainboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "mainboard") 
                mainboard.modalPresentationStyle = .fullScreen
                self.present(mainboard, animated: true, completion: nil)
                let dict = (data as! [String: String])["token"]
                self.hashToken = true
                guard let token = dict else { return }
                
                UserDefaults.standard.set(self.hashToken, forKey: "hashToken")
                
                print(token)

            case .failure(let err):
                self.hashToken = false
                print("that bai")

                print(err.localizedDescription)

                let alert = UIAlertController(title: "Something Wrong", message: "Emai or pass word wrong", preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "Confirm", style: .cancel, handler: nil)
                alert.addAction(cancelAction)
                self.present(alert, animated: true, completion: nil)


            }
            
        }
    }
    
    
    
    
}

