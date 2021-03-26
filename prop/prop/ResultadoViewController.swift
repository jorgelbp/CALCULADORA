//
//  ResultadoViewController.swift
//  prop
//
//  Created by JORGE LUIS BALTAZAR PEREZ on 25/03/21.
//

import SwiftUI


class ResultadoViewController: UIViewController {
    @IBOutlet weak var precioPorPersonaLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var total: String?
    var precioPorPersona: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = "$ \(total ?? "0.0")"
        precioPorPersonaLabel.text = "$ \(precioPorPersona ?? "0.0")"
       
    }
    @IBAction func RecalcularPropina(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)

    }
    
 
    
}
