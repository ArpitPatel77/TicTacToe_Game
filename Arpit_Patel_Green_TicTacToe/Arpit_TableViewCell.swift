//
//  Arpit_TableViewCell.swift
//  Arpit_Patel_Green_TicTacToe
//
//  Created by Arpit Kamalkumar Patel on 2019-09-25.
//  Copyright © 2019 Arpit Kamalkumar Patel. All rights reserved.
//

import UIKit

class Arpit_TableViewCell: UITableViewCell {

    
    @IBOutlet weak var winLossImage: UIImageView!
    @IBOutlet weak var whoWinLabel: UILabel!
    @IBOutlet weak var dateTimeLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
