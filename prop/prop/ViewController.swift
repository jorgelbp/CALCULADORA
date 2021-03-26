//
//  ViewController.swift
//  prop
//
//  Created by JORGE LUIS BALTAZAR PEREZ on 22/03/21.
//

import UIKit
var porcentaje=1
var per=1
var resul = 0.0
var porceaux = 0.0
var porces = 0.0
 var cerebroCalculadora = CerebroCalculadora()

class ViewController: UIViewController {
    @IBOutlet weak var perSlid: UISlider!
    @IBOutlet weak var porcSlid: UISlider!
    @IBOutlet weak var porcLb: UILabel!
    @IBOutlet weak var perLb: UILabel!
    @IBOutlet weak var precio: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    
    @IBAction func camPorc(_ sender: Any) {
        porcentaje = Int(porcSlid.value)
        
        porcLb.text = String(porcentaje)
        
    }
    @IBAction func person(_ sender: Any) {
        per = Int(perSlid.value)
        perLb.text = String(per)
    }
    @IBAction func reset(_ sender: Any) {
        porcentaje = 1
        per = 1
        porcLb.text = "1"
        perLb.text = "1"
    }
    
    @IBAction func calculo(_ sender: Any) {

                let personas = Int(String(format: "%.0f", perSlid.value)) ?? 0
                let porcentaje = Int(String(format:"%.0f", porcSlid.value)) ?? 0
                let totalCuenta = Float(precio.text ?? "0.0") ?? 0.0
                
                cerebroCalculadora.calcularTotal(total: totalCuenta, porcentajePropina: porcentaje, numPersonas: personas)
                
                performSegue(withIdentifier: "resultado", sender: self)

        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "resultado"{
               let  destinoVC = segue.destination as! ResultadoViewController
               destinoVC.total = cerebroCalculadora.returnTotalCuenta()
               destinoVC.precioPorPersona = cerebroCalculadora.returnPrecioPorPersona()
           }
       }

    
    
   


}

