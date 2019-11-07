//
//  CustomTableViewCell.swift
//  LoginScreenIOSApp
//
//  Created by Apple on 11/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var yearLbl: UILabel!
    @IBOutlet weak var namelbl: UILabel!
    
    @IBOutlet weak var idLbl: UILabel!
    
    @IBOutlet weak var colorLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
