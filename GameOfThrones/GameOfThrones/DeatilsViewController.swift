//
//  DeatilsViewController.swift
//  GameOfThrones
//
//  Created by Tsering Lama on 11/18/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class DeatilsViewController: UIViewController {
    
    var data: GOTEpisode!
    
    @IBOutlet weak var detaillImage: UIImageView!
    @IBOutlet weak var seasonLabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var runtimeLabel: UILabel!
    @IBOutlet weak var airtimeLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detaillImage.image = UIImage(named: data.originalImageID)
        seasonLabel.text = "Season: \(data.season.description)"
        episodeLabel.text = "Episode: \(data.number.description)"
        runtimeLabel.text = "Runtime: \(data.runtime.description)"
        airtimeLabel.text = "Airtime: \(data.airdate.description)"
        detailsLabel.text = data.summary

    }
    


}
