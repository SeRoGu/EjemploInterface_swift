//
//  BotonViewController.swift
//  Ejemplo_UI_01
//
//  Created by Seba on 8/3/17.
//  Copyright © 2017 Seba. All rights reserved.
//

import Foundation
import UIKit


class BotonViewController: UIViewController , UITextFieldDelegate{
    
    @IBOutlet var LabelHola: UILabel!
    @IBOutlet var TextIntroducir: UITextField!
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true);
        //cuando tocamos por fuera del keyword se esconde
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func touchBoton(sender: UIButton) {
        
         TextIntroducir.resignFirstResponder();
        //  resigna ser el first responder deja de interactuar con el teclado
        
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        LabelHola.text = "Hola "+TextIntroducir.text!;
        TextIntroducir.resignFirstResponder();
        return false;
    }

    
    
}