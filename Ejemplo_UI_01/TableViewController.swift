//
//  TableViewController.swift
//  Ejemplo_UI_01
//
//  Created by Seba on 10/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

import Foundation
import UIKit

class TableViewController : UIViewController , UITableViewDataSource {
    let animales = ["Tigre", "Girafa", "Caballo" , "Paloma" ,"Pajaro" , "Raton" , "Vaca", "Perro", "Leon" ]
   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animales.count;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell();
        cell.textLabel!.text = " celda \(indexPath.row) ";
        return cell
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