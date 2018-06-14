//
//  CadastroViewController.swift
//  Nba Fantasy
//
//  Created by Vinicius Mangueira Correia on 25/10/17.
//  Copyright © 2017 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit
import CoreData
class CadastroViewController: UIViewController, UITextFieldDelegate {

    
    var user: [Users]?
    
    
    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginText.delegate = self
        emailText.delegate = self
        passwordText.delegate = self
        
        
       
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
      
        
        if textField.text?.count == 1 && string == "" {
            saveButton.isEnabled = false
        }else if verify() && string != "" {
            saveButton.isEnabled = true
        }
        
        
        return true
    }
  
    
    
    func verify() -> Bool {
        if loginText.text != "" && passwordText.text != "" && emailText.text != "" && (passwordText.text?.count)! < 8 {
            return true
        } else {
            return false
        }
    
    
    }
    
    
    
    
    @IBAction func saveUsers(_ sender: Any) {
    
        
        let email = emailText.text
        let senha = passwordText.text
        let login = loginText.text
        
        
        
        
        let newUser = Users.create()
        
        newUser.email = email
        newUser.login = login
        newUser.senha = senha
        
        coreDataHelper.saveContext()
        
        
        
        
        self.dismiss(animated: true, completion: nil)
    }
 
    
//    //TESTE COREDATA
//    @IBAction func mostra(_ sender: Any) {
//    let result = try? coreDataHelper.persistentContainer.viewContext.fetch(Users.userFetchRequest()) as! [NSManagedObject]
//
//        let users = result?.map({ (user) -> Users in
//            return user as! Users
//        })
//
//        users?.forEach{ print("Login: \($0.login ?? "Not Found"), E-mail: \($0.email ?? "Not Found"), Senha: \($0.senha ?? "Not Found")") }
//    }
//



    
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
