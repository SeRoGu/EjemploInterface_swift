//
//  TableTwoSecctionViewController.swift
//  Ejemplo_UI_01
//
//  Created by Seba on 10/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

import Foundation
import UIKit

class TableTwoSecctionViewController : UIViewController , UITableViewDataSource {
    let equipos = [("Boca","Argentina"), ("Riber","Argentina"), ("Belgrano","Argentina"), ("Barcelona","España"), ("Real Madrid","España"), ("Atletico","España"), ("Napoli","Italia"), ("Juventus","España") , ("Roma","España"), ("Milan","España"),  ("PSG","Francia") ,  ("Lyon","Francia"),  ("Bayer","Alemania")  ,  ("Manchester","UK"),  ("Manchester City","UK") ,  ("Liverpool","UK")  ]
    
    let jugadores = [("Messi" ,"10"), ("Cristiano" ,"10"), ("Benzema" ,"9"), ("Higuain" ,"9"), ("Aguero" ,"9"), ("Ronaldiño" ,"10"), ("Dani alvez" ,"10"), ("Eto" ,"10") , ("Basquez" ,"10"), ("Adriano" ,"10"), ("Ibra" ,"9"), ("Sergio Ramos" ,"2") ]
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2;
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return  equipos.count;
        }else{
            return  jugadores.count;
        }
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("celda1")
        if indexPath.section == 0 {
            let (equipo,pais) = equipos[indexPath.row]
            cell!.textLabel!.text = equipo
            cell?.detailTextLabel?.text = pais
        }else{
            let (nombre,puesto) = jugadores[indexPath.row]
            cell!.textLabel!.text = nombre
            cell?.detailTextLabel?.text = puesto
        }

        return cell!
    }
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Equipos"
        }else{
            return "Jugadores"
        }
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