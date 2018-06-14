//
//  JogadoresViewController.swift
//  Nba Fantasy
//
//  Created by Vinicius Mangueira Correia on 26/10/17.
//  Copyright © 2017 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class JogadoresViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
   
    var time: Team?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellj", for: indexPath) as! PlayersTableViewCell
        
       let jogador = time?.jogadores[indexPath.row]
        
        cell.name.text = jogador?.nome
        cell.photo.image = jogador?.image
        cell.preco.text = String(describing: (jogador?.preco)!)
        
        
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return time?.jogadores.count ?? 0
    }
    
    
}
