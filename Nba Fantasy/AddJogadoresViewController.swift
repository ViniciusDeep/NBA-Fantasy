//
//  AddJogadoresViewController.swift
//  Nba Fantasy
//
//  Created by Vinicius Mangueira Correia on 25/10/17.
//  Copyright © 2017 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class AddJogadoresViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    var time: [Team] = []
    
    
    @IBOutlet weak var tableView: UITableView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        time = criatimes()
        
    }

  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segue", sender: time[indexPath.row])
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            if let controller = segue.destination as? JogadoresViewController {
                controller.time = sender as! Team
                
            }
        }
        
    }
    
    
    
    
    
    @IBAction func backButton(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
    
    }
    
    func criatimes() -> [Team] {
        
        let time1 = Team(photo: #imageLiteral(resourceName: "Atlanta"), nome: "Atlanta Hawks")
        let time2 = Team(photo: #imageLiteral(resourceName: "Boston.png"), nome: "Boston Celtics")
        let time3 = Team(photo: #imageLiteral(resourceName: "Bulls"), nome: "Chicago Bulls")
        let time4 = Team(photo: #imageLiteral(resourceName: "Cavs"), nome: "Cleveland Cavaliers")
        let time5 = Team(photo: #imageLiteral(resourceName: "charlotte"), nome: "Charlotte Hornets")
        let time6 = Team(photo: #imageLiteral(resourceName: "Dallas.png"), nome: "Dallas Mavericks")
        let time7 = Team(photo: #imageLiteral(resourceName: "Pistons"), nome: "Detroit Pistons")
        let time8 = Team(photo: #imageLiteral(resourceName: "GSW"), nome: "Golden State Warrios")
        let time9 = Team(photo: #imageLiteral(resourceName: "Houston"), nome: "Houston Rockets")
        let time10 = Team(photo: #imageLiteral(resourceName: "Pacers"), nome: "Indiana Pacers")
        let time11 = Team(photo: #imageLiteral(resourceName: "clippers"), nome: "LA Clippers")
        let time12 = Team(photo: #imageLiteral(resourceName: "Lakers.png"), nome: "LA Lakers")
        let time13 = Team(photo: #imageLiteral(resourceName: "Wolves"), nome: "Minessota TimberWolves")
        let time14 = Team(photo: #imageLiteral(resourceName: "Memphis"), nome: "Memphis Grizzilies")
        let time15 = Team(photo: #imageLiteral(resourceName: "Bucks"), nome: "Milwaukee Bucks")
        let time16 = Team(photo: #imageLiteral(resourceName: "Miami"), nome: "Miami Heat")
        let time17 = Team(photo: #imageLiteral(resourceName: "NewYork"), nome: "New York Knicks")
        let time18 = Team(photo: #imageLiteral(resourceName: "Orlando"), nome: "Orlando Magic")
        let time19 = Team(photo: #imageLiteral(resourceName: "Portland"), nome: "Portland Trail Blazers")
        let time20 = Team(photo: #imageLiteral(resourceName: "Phoenix"), nome: "Phoenix Suns")
        let time21 = Team(photo: #imageLiteral(resourceName: "Sacramento.png"), nome: "Sacramento Kings")
        let time22 = Team(photo: #imageLiteral(resourceName: "Washington"), nome: "Washigton Wizards")
        
        time15.cadastraJogadores(nome: ["Giannis Antetokoumpo", "Greg Monroe"], image: [#imageLiteral(resourceName: "giannis"), #imageLiteral(resourceName: "greg") ], preco: [20, 8])
        time16.cadastraJogadores(nome: ["Jonathan"], image: [#imageLiteral(resourceName: "giannis")], preco: [10])
        
        
        
        return [time1, time2,time3,time4,time5,time6,time7,time8,time9,time10,time11,time12,time13,time14,time15,time16,time17,time18,time19,time20,time21,time22]
        
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TeamCell
        
        
        
        cell.name.text = time[indexPath.row].nome
       
        cell.photo.image = time[indexPath.row].photo
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return time.count
    }
    
    
  
    
    
}
