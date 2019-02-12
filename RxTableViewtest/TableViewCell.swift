//
//  TableViewCell.swift
//  RxTableViewtest
//
//  Created by Георгий Ходиков on 12/02/2019.
//  Copyright © 2019 Георгий Ходиков. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
