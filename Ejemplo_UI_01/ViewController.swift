//
//  ViewController.swift
//  Ejemplo_UI_01
//
//  Created by Seba on 8/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
   // var lista:[String]? = ["a", "b" ,"c","d","e", "f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","y","z"] ;
    
    var lista  = [("Esconder Teclado","VC1"), ("Dat Fecha Actual" ,"VC2"),("Obtener Fecha con Date Picker","VC3"),("Datos de Data Picket","VC4"),("Tabla Simple","VC5"), ("Tabla custumizada","VC6"),("Tabla con dos secciones","VC7" )] ;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return lista.count;
    }
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell: UITableViewCell;
        cell = tableView.dequeueReusableCellWithIdentifier("celda1")!;
        if let celdaAux :UITableViewCell = cell {
 
        }else{
              cell =  UITableViewCell();
        }
       let (escenarioAux ,indiceAux) = lista[indexPath.row];
        cell.textLabel?.text = escenarioAux;
        return cell;
    }

     public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
          let (escenarioAux ,nombreControlador) = lista[indexPath.row];
        
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            var miVistaDos = storyBoard.instantiateViewControllerWithIdentifier(nombreControlador) as UIViewController
            self.presentViewController(miVistaDos, animated:true, completion:nil)
    }


}

