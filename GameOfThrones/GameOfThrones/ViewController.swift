//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Alex Paul on 11/16/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var data = [[GOTEpisode]]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        data = GOTEpisode.getSeasons()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? DeatilsViewController, let indexpath = tableView.indexPathForSelectedRow else {
            return
        }
        vc.data = data[indexpath.section][indexpath.row]
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let episode = data[indexPath.section][indexPath.row]
        
        if indexPath.section % 2 == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "left", for: indexPath) as? LeftTableViewCell else {
                fatalError()
            }
            cell.configureLeft(got: episode)
            return cell
            
        } else {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "right", for: indexPath) as? RightTableViewCell else {
                    fatalError()
                }
                cell.configureRight(got: episode)
                return cell
            }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Season: \(data[section].first?.season.description ?? "1")"
    }
}

