//
//  RetoViewModel.swift
//  Ponte Pedo
//
//  Created by David Mar Alvarez on 6/8/16.
//  Copyright © 2016 David y Marilyn. All rights reserved.
//

import Foundation

class RetoViewModel {
    
    let nombre: String
    private(set) var descripcion: String
    let carta: Carta
    
    init(reto: Reto, cartaAsignada: Carta) {
        nombre = reto.nombre
        descripcion = reto.descripcion
        carta = cartaAsignada
    }
    
    func isValid(retosDisponibles: [RetoViewModel]) -> Bool {
        return true
    }
    
    func prepareForDisplay(retosDisponibles: [RetoViewModel]) {
        
    }
}

class RetoReyViewModel: RetoViewModel {
    
    /**
       Cambia la descripcion cuando solamente queda un rey en los retos disponibles.
     
     - parameter retosDisponibles: recibe un arreglo de RetoViewModel
     */
    override func prepareForDisplay(retosDisponibles: [RetoViewModel]) {
        let reyes = retosDisponibles.filter { (reto) -> Bool in
            let valor = reto.carta.valor
            return valor == .Rey
        }
        
        guard reyes.count <= 0 else { return }
        
        descripcion = "otra descripcion"
    }
    
}
