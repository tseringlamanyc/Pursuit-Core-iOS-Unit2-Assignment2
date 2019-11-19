//
//  BothTableViewCell.swift
//  GameOfThrones
//
//  Created by Tsering Lama on 11/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BothTableViewCell: UITableViewCell {
    
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var leftName: UILabel!
    @IBOutlet weak var leftNumber: UILabel!
    @IBOutlet weak var rightImage: UIImageView!
    @IBOutlet weak var rightName: UILabel!
    @IBOutlet weak var rightNumber: UILabel!
    
    func configureLeft (got: GOTEpisode) {
        leftImage.image = UIImage(named: got.mediumImageID)
        leftName.text = got.name
        leftNumber.text = "S:\(got.season) E:\(got.number)"
    }
    
    func configureRight (got: GOTEpisode){
        rightImage.image = UIImage(named: got.mediumImageID)
        rightName.text = got.name
        rightNumber.text = "S:\(got.season) E:\(got.number)"
    }
    
}
