//
//  ViewController.swift
//  Medicine Tracker
//
//  Created by Michael Montella on 8/22/15.
//  Copyright © 2015 Michael Montella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        testLabel.layer.cornerRadius = 8
        testLabel.layer.borderColor = UIColor.orangeColor().CGColor
        testLabel.layer.borderWidth = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

