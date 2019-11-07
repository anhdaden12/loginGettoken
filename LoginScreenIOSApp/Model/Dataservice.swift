//
//  Dataservice.swift
//  LoginScreenIOSApp
//
//  Created by Apple on 11/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import Alamofire


class dataService {
    static let sharedInstance = dataService()
    
    
    func getdataApi(completehandle: @escaping(UserData) -> Void) {
        guard let url = URL(string: "https://reqres.in/api/login") else { return }
        
        AF.request(url).responseString { (reponse) in
            switch reponse.result {
            case .success(let reponString):
                guard let dataresponse = UserData(JSONString: "\(reponString)") else { return }
                DispatchQueue.main.async {
                    completehandle(dataresponse)
                }
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }
}




