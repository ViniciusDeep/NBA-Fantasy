//
//  Team.swift
//  Nba Fantasy
//
//  Created by Vinicius Mangueira Correia on 26/10/17.
//  Copyright © 2017 Vinicius Mangueira Correia. All rights reserved.
//

import Foundation
import UIKit
class Team {
    
    var photo: UIImage
    var nome: String
    public var jogadores: [String] = []
    
    init(photo: UIImage, nome: String) {
        self.photo = photo
        self.nome = nome
    }
    
    
    
}
