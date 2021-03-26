//
//  cerebroCalculadora.swift
//  prop
//
//  Created by JORGE LUIS BALTAZAR PEREZ on 25/03/21.
//

import Foundation

struct CerebroCalculadora {
    
    var cuenta: Cuenta?
    
    func returnTotalCuenta() -> String {
        let totalCon1Decimal = String(format: "%.1f", cuenta?.total ?? 0.0)
        return totalCon1Decimal
    }
    func returnPrecioPorPersona() -> String {
        let precioIndividualCon1Decimal = String(format: "%.1f", cuenta?.precioPorPersona ?? 0.0)
        return precioIndividualCon1Decimal
    }
    mutating func calcularTotal(total: Float, porcentajePropina: Int, numPersonas: Int){
        let precioTotal = (total)+(total*(Float(porcentajePropina)/100))
        let precioIndividual = precioTotal / Float(numPersonas)
        
        cuenta = Cuenta(total: precioTotal, precioPorPersona: precioIndividual)
    }
}
