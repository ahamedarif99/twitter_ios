//
//  tweetTableViewCell.swift
//  Twitter
//
//  Created by Ahamed Arif on 3/3/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class tweetTableViewCell: UITableViewCell {

    @IBOutlet weak var tweetIMG: UIImageView!
    
    @IBOutlet weak var tweetName: UILabel!
    
    @IBOutlet weak var tweetLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
