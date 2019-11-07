//
//  dataUserController.swift
//  LoginScreenIOSApp
//
//  Created by Apple on 11/6/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit


class dataUserController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var displayUser: UserData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataService.sharedInstance.getdataApi { (data) in
            self.displayUser = data
            self.tableView.reloadData()
        }
    }
    

 

}

extension dataUserController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return displayUser?.dataa?.count ?? 0
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        guard let user = displayUser?.dataa?[indexPath.item] else { return UITableViewCell()}
        cell.idLbl.text = "\(user.id ?? 0)"
        cell.namelbl.text = user.name
        cell.colorLbl.text = ""
        if let color = user.color {
             cell.colorLbl.backgroundColor = UIColor(hexString: color)
        }
        cell.yearLbl.text = "\(user.year ?? 0)"
        return cell
    }
}
