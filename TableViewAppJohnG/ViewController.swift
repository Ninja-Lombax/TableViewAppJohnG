//
//  ViewController.swift
//  TableViewAppJohnG
//
//  Created by John Grasser on 9/28/20.
//  Copyright © 2020 John Grasser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let petArray = ["cat","dog","parakeet","canary","finch","tropical fish","goldfish","sea horses","hamster","gerbil","rabbit","turtle","snake","lizard","hermit crab","snake","bat","wolf","fox","parrot"]
    
    let cellID = "cellID"
    
    @IBOutlet weak var petTable: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petTable.dataSource = self
        petTable.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return petArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        
        if(cell == nil)
        {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
            
        }
        
        cell?.textLabel?.text = petArray[indexPath.row]
        
        return cell!
    }

}

