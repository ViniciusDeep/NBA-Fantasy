//
//  Team.swift
//  Nba Fantasy
//
//  Created by Vinicius Mangueira Correia on 26/10/17.
//  Copyright © 2017 Vinicius Mangueira Correia. All rights reserved.
//

import Foundation
import UIKit


class Jogador {
    var nome: String
    var image: UIImage
    var preco: Double
    
    init(nome: String, image: UIImage, preco: Double) {
        self.nome = nome
        self.image = image
        self.preco = preco
    }
    
}



class Team {
    
    var photo: UIImage
    var nome: String
    var jogadores: [Jogador] = []

    init(photo: UIImage, nome: String) {
        self.photo = photo
        self.nome = nome
        
    }
    
  
    
    
    public func cadastraJogadores(nome: [String], image: [UIImage], preco: [Double]) {
        
    
        for i in 0..<nome.count{
            let jogador = Jogador(nome: nome[i], image: image[i], preco: preco[i])
            jogadores.append(jogador)
        }
    
    }

    
}
