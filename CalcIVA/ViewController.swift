//
//  ViewController.swift
//  CalcIVA
//
//  Created by Joaquín Jiménez García on 27/3/17.
//  Copyright © 2017 Joaquín Jiménez García. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var campoImporte: UILabel!
    @IBOutlet weak var insertarImporte: UITextField!
    var importe = 0.0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btDescIVA(_ sender: Any) {
        if (insertarImporte.text != ""){
            importe = importeDeLaCaja()-calcularIVA(importe: importe)
            campoImporte.text = String(importe) + " €"
        }
    }

    @IBAction func btCalcIVA(_ sender: Any) {
        if (insertarImporte.text != ""){
            importe = importeDeLaCaja()+calcularIVA(importe: importe)
            campoImporte.text = String(importe) + " €"
        }
    }
    
    func importeDeLaCaja() -> Double{
        importe = (Double(insertarImporte.text!)! as Double)
        
        return importe
    }
    
    func calcularIVA(importe:Double) -> Double{
        let iva = importe * 0.21
        
        return iva
    }
}

