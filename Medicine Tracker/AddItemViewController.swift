//
//  AddItemViewController.swift
//  Medicine Tracker
//
//  Created by Michael Montella on 8/22/15.
//  Copyright © 2015 Michael Montella. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController, UITextFieldDelegate {
    
    let boxColor = UIColor(red: 0.24, green: 0.31, blue: 0.45, alpha: 1).CGColor
    
    var clickCount1 = 0
    var clickCount2 = 0
    var clickCount3 = 0
    
    // MARK: - Checkboxes
    @IBOutlet weak var checkbox1: UIButton!
    @IBOutlet weak var checkbox2: UIButton!
    @IBOutlet weak var checkbox3: UIButton!
    
    @IBAction func checkbox1(sender: AnyObject) {
        
        // Changes color of box if pressed
        if clickCount1 == 0 || clickCount1 % 2 == 0 {
            checkbox1.layer.backgroundColor = boxColor
        } else if clickCount1 == 1 || clickCount1 % 2 != 0 {
            checkbox1.layer.backgroundColor = UIColor.whiteColor().CGColor
        }
        clickCount1++
        
    }
    @IBAction func checkbox2(sender: AnyObject) {
        
        // Changes color of box if pressed
        if clickCount2 == 0 || clickCount2 % 2 == 0 {
            checkbox2.layer.backgroundColor = boxColor
        } else if clickCount2 == 1 || clickCount2 % 2 != 0 {
            checkbox2.layer.backgroundColor = UIColor.whiteColor().CGColor
        }
        clickCount2++
    }
    @IBAction func checkbox3(sender: AnyObject) {

        // Changes color of box if pressed
        if clickCount3 == 0 || clickCount3 % 2 == 0 {
            checkbox3.layer.backgroundColor = boxColor
        } else if clickCount3 == 1 || clickCount3 % 2 != 0 {
            checkbox3.layer.backgroundColor = UIColor.whiteColor().CGColor
        }
        clickCount3++
    }
    
    // MARK: - Text Fields
    @IBOutlet weak var medicineTextField: UITextField!
    @IBOutlet weak var dosageTextField: UITextField!
    @IBOutlet weak var precautionsTextField: UITextField!
    
    // MARK: - Buttons
    @IBAction func doneButton(sender: AnyObject) {
    }
    @IBAction func searchButton(sender: AnyObject) {
    }
    @IBOutlet weak var customButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        checkbox1.layer.borderWidth = 3
        checkbox1.layer.borderColor = boxColor
        checkbox2.layer.borderWidth = 3
        checkbox2.layer.borderColor = boxColor
        checkbox3.layer.borderWidth = 3
        checkbox3.layer.borderColor = boxColor
        
        self.medicineTextField.delegate = self
        self.dosageTextField.delegate = self
        self.precautionsTextField.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
