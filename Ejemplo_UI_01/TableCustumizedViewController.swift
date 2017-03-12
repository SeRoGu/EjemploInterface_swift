//
//  TableCustumizedViewController.swift
//  Ejemplo_UI_01
//
//  Created by Seba on 10/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

import Foundation
import UIKit

class TableCustumizedViewController : UIViewController , UITableViewDataSource {
    let equipos = [("Boca","Argentina"), ("Riber","Argentina"), ("Belgrano","Argentina"), ("Barcelona","España"), ("Real Madrid","España"), ("Atletico","España"), ("Napoli","Italia"), ("Juventus","España") , ("Roma","España"), ("Milan","España"),  ("PSG","Francia") ]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  equipos.count;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("celda1")
         let (equipo,pais) = equipos[indexPath.row]
        cell!.textLabel!.text = equipo
        cell?.detailTextLabel?.text = pais
        return cell!
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