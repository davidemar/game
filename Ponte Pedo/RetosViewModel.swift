//
//  RetoViewModel.swift
//  Ponte Pedo
//
//  Created by David Mar Alvarez on 6/8/16.
//  Copyright © 2016 David y Marilyn. All rights reserved.
//
import Foundation
import GameplayKit

class RetosViewModel {
    
    let retosModel = RetosModel()
    var retosDisponibles = [RetoViewModel]()
    
    /**
     Regresa el primer reto jugable. Si el reto elegido no es jugable, lo mueve a una posición al azar de la fila y regresa un nuevo reto.
     
     Regresa nil y reinicia el juego si no hay retos disponibles.
     
     - returns: el primer reto válido del arreglo o nil si no hay retos
     */
    func nextReto() -> RetoViewModel? {
        
        guard
            let primerReto = retosDisponibles.first
            else {
                reiniciarJuego()
                return nil
        }
        
        retosDisponibles.removeFirst()
        
        guard
            primerReto.isValid(retosDisponibles)
            else {
                // Si el reto no es válido, lo cambiamos de lugar con otro reto elegido al azar y volvemos a intentar regresar el primer reto.
                let randomIndex = Int(arc4random_uniform(UInt32(retosDisponibles.count)))
                (retosDisponibles[0], retosDisponibles[randomIndex]) = (retosDisponibles[randomIndex], retosDisponibles[0])
                return nextReto()
        }
        
        primerReto.prepareForDisplay(retosDisponibles)
        
        return primerReto
    }
    /**
     Después de que no hay retos disponibles reinicia el juego repoblando el arreglo.
     */
    private func reiniciarJuego() {
        print("se reinicio el juego")
        let arregloDeArreglosRetosViewModel = retosModel.todosLosRetos().map { retoIterado -> [RetoViewModel] in
            return retoIterado.cartas.map { cartaIterada in
                if cartaIterada.valor == .Rey {
                    return RetoReyViewModel(reto: retoIterado, cartaAsignada: cartaIterada)
                } else {
                    return RetoViewModel(reto: retoIterado, cartaAsignada: cartaIterada)
                }
            }
        }
        
        retosDisponibles = arregloDeArreglosRetosViewModel.flatMap { $0 }
        retosDisponibles = GKRandomSource.sharedRandom().arrayByShufflingObjectsInArray(retosDisponibles) as! [RetoViewModel]
    }
}