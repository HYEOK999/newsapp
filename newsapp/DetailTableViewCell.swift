//
//  DetailTableViewCell.swift
//  newsapp
//
//  Created by HYEOKBOOK on 02/07/2019.
//  Copyright © 2019 HYEOKBOOK. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLB: UILabel!
    
    @IBOutlet weak var titleLB: UILabel!
    @IBOutlet weak var desLB: UILabel!
    @IBOutlet weak var authorLB: UILabel!
    @IBOutlet weak var imageVW: UIImageView!{
        didSet{
            imageVW.layer.cornerRadius = imageVW.bounds.width/2
            imageVW.clipsToBounds = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
