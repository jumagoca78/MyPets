//
//  PetTableViewController.swift
//  MyPets
//
//  Created by MiLab on 08/07/17.
//  Copyright © 2017 MiLab. All rights reserved.
//

import UIKit


class PetTableViewController: UIViewController, UITableViewDataSource {

    let pets=[
        "Silver",
        "Kerchak",
        "Giorgio",
        "Estrella",
        "Bunker",
        "Tanque",
        "Barrabas",
        "Terry",
        "Bobby",
        "Hachi",
        "Scoopy",
        "Scrappy"
        
    ]
    
    @IBOutlet weak var oetTable: UITableView!
    //LifeCycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.oetTable.dataSource = self
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //UITableView delegate methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return pets.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "petCell")
        cell?.textLabel?.text = pets [indexPath.row]
        
        return cell!
    }
}
