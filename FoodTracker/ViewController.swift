//
//  ViewController.swift
//  FoodTracker
//
//  Created by Prince Kumar on 9/21/15.
//  Copyright © 2015 Prince Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: Actions

    @IBAction func setDefaultLabelText(sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
    }
}

