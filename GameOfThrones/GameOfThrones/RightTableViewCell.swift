//
//  RightTableViewCell.swift
//  GameOfThrones
//
//  Created by Tsering Lama on 11/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class RightTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var rightImage: UIImageView!
    @IBOutlet weak var rightName: UILabel!
    @IBOutlet weak var rightNumber: UILabel!
    
    func configureRight (got: GOTEpisode) {
        rightImage.image = UIImage(named: got.mediumImageID)
        rightName.text = got.name
        rightNumber.text = "S:\(got.season) E:\(got.number)"
    }
    
}
