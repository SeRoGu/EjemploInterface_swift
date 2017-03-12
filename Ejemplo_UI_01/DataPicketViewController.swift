//
//  DataPicketViewController.swift
//  Ejemplo_UI_01
//
//  Created by Seba on 9/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

import Foundation
import UIKit

class DataPicketViewController : UIViewController , UIPickerViewDataSource , UIPickerViewDelegate{
    let animales = ["Tigre", "Girafa", "Caballo" , "Paloma" ,"Pajaro" , "Raton" , "Vaca", "Perro", "Leon" ]
   
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return animales.count;
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return animales[row]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var color : UIColor
        switch row{
            case 0: color = UIColor.orangeColor()
            case 1: color = UIColor.greenColor()
            case 2: color = UIColor.grayColor()
            case 3: color = UIColor.blueColor()
            case 4: color = UIColor.brownColor()
            case 5: color = UIColor.redColor()
            case 6: color = UIColor.purpleColor()
            default: color = UIColor.lightGrayColor()
        }
        view.backgroundColor = color;
    }
    
    
    
}