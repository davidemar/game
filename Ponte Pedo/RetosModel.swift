//
//  RetosModel.swift
//  Ponte Pedo
//
//  Created by David Mar Alvarez on 6/8/16.
//  Copyright © 2016 David y Marilyn. All rights reserved.
//

import Foundation

class RetosModel{
    
    func todosLosRetos() -> [Reto] {
       return [
        Reto(nombre: "Toman Todos", descripcion: "Toman todos los jugadores al mismo tiempo", cartas: [
            Carta(palo: .Corazon, valor: .As),
            Carta(palo: .Trebol, valor: .As),
            Carta(palo: .Espada, valor: .As),
            Carta(palo: .Diamante, valor: .As)
            ]),
        
        Reto(nombre: "Crea tu Regla", descripcion: "El jugador elige una regla que debe seguirse hasta volver a sacar un dos, el último en seguirla debe tomar", cartas: [
            Carta(palo: .Trebol, valor: .Dos),
            Carta(palo: .Corazon, valor: .Dos),
            Carta(palo: .Espada, valor: .Dos),
            Carta(palo: .Diamante, valor: .Dos)
            ]),
        
        Reto(nombre: "Caricachupas", descripcion: "El jugador empieza una ronda de caricachupas, el jugador elige el tema", cartas: [
            Carta(palo: .Trebol, valor: .Tres),
            Carta(palo: .Corazon, valor: .Tres),
            Carta(palo: .Espada, valor: .Tres),
            Carta(palo: .Diamante, valor: .Tres)
            ]),
        
        Reto(nombre: "Yo nunca nunca...", descripcion: "El jugador comienza una ronda de yo nunca nunca", cartas: [
            Carta(palo: .Trebol, valor: .Cuatro),
            Carta(palo: .Corazon, valor: .Cuatro),
            Carta(palo: .Espada, valor: .Cuatro),
            Carta(palo: .Diamante, valor: .Cuatro)
            ]),
        
        Reto(nombre: "Frutitas", descripcion: "", cartas: [
            Carta(palo: .Trebol, valor: .Cinco),
            Carta(palo: .Corazon, valor: .Cinco),
            Carta(palo: .Espada, valor: .Cinco),
            Carta(palo: .Diamante, valor: .Cinco)
            ]),
        
        Reto(nombre: "Cascada", descripcion: "Todos los jugadores toman y cada jugador deja de tomar hasta que el de la derecha haya dejado de tomar", cartas: [
            Carta(palo: .Trebol, valor: .Seis),
            Carta(palo: .Corazon, valor: .Seis),
            Carta(palo: .Espada, valor: .Seis),
            Carta(palo: .Diamante, valor: .Seis)
            ]),
        
        Reto(nombre: "Shots Dirigidos", descripcion: "El jugador elige quien debe tomarse un shot", cartas: [
            Carta(palo: .Trebol, valor: .Siete),
            Carta(palo: .Corazon, valor: .Siete),
            Carta(palo: .Espada, valor: .Siete),
            Carta(palo: .Diamante, valor: .Siete)
            ]),
        
        Reto(nombre: "Hombres Toman", descripcion: "Todos los hombres toman", cartas: [
            Carta(palo: .Trebol, valor: .Ocho),
            Carta(palo: .Corazon, valor: .Ocho),
            Carta(palo: .Espada, valor: .Ocho),
            Carta(palo: .Diamante, valor: .Ocho)
            ]),
        
        Reto(nombre: "Mujeres Toman", descripcion: "Todos las mujeres toman", cartas: [
            Carta(palo: .Trebol, valor: .Nueve),
            Carta(palo: .Corazon, valor: .Nueve),
            Carta(palo: .Espada, valor: .Nueve),
            Carta(palo: .Diamante, valor: .Nueve)
            ]),
        
        Reto(nombre: "Compañero", descripcion: "El jugador elige a alguien más con quien tomar", cartas: [
            Carta(palo: .Trebol, valor: .Diez),
            Carta(palo: .Corazon, valor: .Diez),
            Carta(palo: .Espada, valor: .Diez),
            Carta(palo: .Diamante, valor: .Diez)
            ]),
        
        Reto(nombre: "Mesero", descripcion: "El jugador elige a alguien para que sea el mesero hasta que vuelva a salir un Joto", cartas: [
            Carta(palo: .Trebol, valor: .Joto),
            Carta(palo: .Corazon, valor: .Joto),
            Carta(palo: .Espada, valor: .Joto),
            Carta(palo: .Diamante, valor: .Joto)
            ]),
        
        Reto(nombre: "Historia", descripcion: "El jugador comienza 'había', y el siguiente jugador debe repetir la palabra anterior y agregar otra palabra para formar una historia, el que se equivoque diciendo dos palabras  o repitiendo algo que ya se dijo debe tomar ", cartas: [
            Carta(palo: .Trebol, valor: .Cuina),
            Carta(palo: .Corazon, valor: .Cuina),
            Carta(palo: .Espada, valor: .Cuina),
            Carta(palo: .Diamante, valor: .Cuina)
            ]),
        
        Reto(nombre: "Rey", descripcion: "descripcion pendiente", cartas: [
            Carta(palo: .Trebol, valor: .Rey),
            Carta(palo: .Corazon, valor: .Rey),
            Carta(palo: .Espada, valor: .Rey),
            Carta(palo: .Diamante, valor: .Rey)
            ]),

        ]
    }
}