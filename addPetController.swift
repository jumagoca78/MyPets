//
//  addPetController.swift
//  MyPets
//
//  Created by MiLab on 08/07/17.
//  Copyright © 2017 MiLab. All rights reserved.
//

import UIKit

class addPetController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var petName: UITextField!
   
    var petsController : PetTableViewController?
    
    
    @IBAction func addPet(_ sender: Any) {
        let name = self.petName.text
        
        petsController?.pets.append(name!)
        
        petsController?.oetTable.reloadData()
        self.navigationController?.popViewController(animated: true)
    }
}
