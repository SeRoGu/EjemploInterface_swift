//
//  BotonViewController.swift
//  Ejemplo_UI_01
//
//  Created by Seba on 8/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

import Foundation
import UIKit


class BotonViewController: UIViewController {
    
    @IBOutlet var LabelHola: UILabel!
    @IBOutlet var TextIntroducir: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func touchBoton(sender: UIButton) {
        
        LabelHola.text = "Hola "+TextIntroducir.text!;
    }

    
    
}