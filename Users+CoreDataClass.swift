//
//  Users+CoreDataClass.swift
//  Nba Fantasy
//
//  Created by Vinicius Mangueira Correia on 26/10/17.
//  Copyright © 2017 Vinicius Mangueira Correia. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Users)
public class Users: NSManagedObject {

    class func all() -> [Users] {
        let context = coreDataHelper.persistentContainer.viewContext
        var result: [Users]?
        do{
            try result = context.fetch(fetchRequest()) as? [Users]
        } catch {
            print("Erro no catch")
        }
        return result ?? [Users]()
    }
    
    class func create() -> Users {
        let entity = NSEntityDescription.entity(forEntityName: "Users", in: coreDataHelper.persistentContainer.viewContext)
        
        let user = Users(entity: entity!, insertInto: coreDataHelper.persistentContainer.viewContext)
        
        return user
    }
    
    
    
    
}
