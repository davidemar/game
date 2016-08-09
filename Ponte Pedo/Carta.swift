//
//  Carta.swift
//  Ponte Pedo
//
//  Created by David Mar Alvarez on 6/8/16.
//  Copyright © 2016 David y Marilyn. All rights reserved.
//

import Foundation

struct Carta {
    let palo: Palo
    let valor: Valor
    
    enum Palo: String {
        case Corazon = "♥️"
        case Trebol = "♣️"
        case Espada = "♠️"
        case Diamante = "♦️"
    }
    
    enum Valor: String {
        
        case As = "A"
        
        case Dos = "2"
        
        case Tres = "3"
        
        case Cuatro = "4"
        
        case Cinco = "5"
        
        case Seis = "6"
        
        case Siete = "7"
        
        case Ocho = "8"
        
        case Nueve = "9"
        
        case Diez = "10"
        
        case Joto = "J"
        
        case Cuina = "Q"
            
        case Rey = "K"
    }
}
