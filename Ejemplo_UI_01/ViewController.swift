//
//  ViewController.swift
//  Ejemplo_UI_01
//
//  Created by Seba on 8/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource{
    var lista:[String]? = ["a", "b" ,"c","d","e", "f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","y","z"] ;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (lista?.count)!;
    }
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell: UITableViewCell;
        cell = tableView.dequeueReusableCellWithIdentifier("celda1")!;
        if let celdaAux :UITableViewCell = cell {
 
        }else{
              cell =  UITableViewCell();
        }
       
        cell.textLabel?.text = lista![indexPath.row];
        return cell;
    }

    

}

