//
//  PlayersTableViewCell.swift
//  Nba Fantasy
//
//  Created by Vinicius Mangueira Correia on 30/10/17.
//  Copyright © 2017 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {

    
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var photo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
