//
//  TimerViewController.swift
//  Ejemplo_UI_01
//
//  Created by Seba on 9/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

import Foundation
import UIKit

class TimerViewController : UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    @IBAction func buttonDidTap(sender: AnyObject){
        let now = NSDate()
        
        let formatter = NSDateFormatter()
        formatter.dateFormat = "HH:mm a"
        
        timeLabel.text = formatter.stringFromDate(now)
        
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