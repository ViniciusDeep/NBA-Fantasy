//
//  ViewController.swift
//  Nba Fantasy
//
//  Created by Vinicius Mangueira Correia on 25/10/17.
//  Copyright © 2017 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {

    
    
    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    @IBAction func enterButton(_ sender: Any) {
         let result = try? coreDataHelper.persistentContainer.viewContext.fetch(Users.userFetchRequest()) as [NSManagedObject]
        
        let users = result?.map({(user) -> Users in return user as! Users
            
        })
        
       
        
        
        users?.forEach({ (user) in
            user as Users
            if loginText.text == user.login && passwordText.text == user.senha {
                
            }
            
        })
        
       
        
     
        
    
    }
    
    
    

}

