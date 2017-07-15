//
//  PetTableViewController.swift
//  MyPets
//
//  Created by MiLab on 08/07/17.
//  Copyright © 2017 MiLab. All rights reserved.
//

import UIKit


class PetTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var pets=[
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
        self.oetTable.delegate = self
        

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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let oetSelected = pets[indexPath.row]
        let petDetailVC = self.storyboard?.instantiateViewController(withIdentifier: "nombrePerroView") as! PetdetailViewController
        petDetailVC.petName = oetSelected
        
        self.navigationController?.pushViewController(petDetailVC, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newPetController = segue.destination as! addPetController
        
        newPetController.petsController = self
    }
}
