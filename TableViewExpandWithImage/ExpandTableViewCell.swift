//
//  ExpandTableViewCell.swift
//  TableViewExpandWithImage
//
//  Created by RamiReddy on 12/02/20.
//  Copyright © 2020 RamiReddy. All rights reserved.
//

import UIKit

class ExpandTableViewCell: UITableViewCell {

    @IBOutlet weak var mainBackView: UIView!
    @IBOutlet weak var imgeBackground:UIImageView!
    @IBOutlet weak var normal_lbl:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
