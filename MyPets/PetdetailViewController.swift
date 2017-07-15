//
//  PetdetailViewController.swift
//  MyPets
//
//  Created by MiLab on 15/07/17.
//  Copyright © 2017 MiLab. All rights reserved.
//

import UIKit

class PetdetailViewController: UIViewController {

    var petName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.name.text = petName

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var name: UILabel!
    
}
