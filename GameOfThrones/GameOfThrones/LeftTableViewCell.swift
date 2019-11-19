//
//  BothTableViewCell.swift
//  GameOfThrones
//
//  Created by Tsering Lama on 11/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class LeftTableViewCell: UITableViewCell {
    
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var leftName: UILabel!
    @IBOutlet weak var leftNumber: UILabel!
  
    
    func configureLeft (got: GOTEpisode) {
        leftImage.image = UIImage(named: got.mediumImageID)
        leftName.text = got.name
        leftNumber.text = "S:\(got.season) E:\(got.number)"
    }
}
