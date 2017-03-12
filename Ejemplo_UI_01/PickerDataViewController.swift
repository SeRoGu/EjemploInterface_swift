//
//  PickerDataViewController.swift
//  Ejemplo_UI_01
//
//  Created by Seba on 9/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

import Foundation
import UIKit

class PickerDataViewController : UIViewController {
 
    
    @IBOutlet var datePicker: UIDatePicker!
    @IBAction func dayTapInside(sender: AnyObject) {
        let myDate = datePicker.date
        let formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        formatter.locale = NSLocale(localeIdentifier: "es_MX")
        let day = formatter.stringFromDate(myDate)
        let result =  "Es \(day)"
        let alert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        presentViewController(alert, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
}