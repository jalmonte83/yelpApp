//
//  BusinessCell.swift
//  YelpApp
//
//  Created by Jeffrey Almonte on 8/6/19.
//  Copyright © 2019 Jeffrey Almonte. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var businessName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
