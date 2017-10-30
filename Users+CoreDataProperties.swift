//
//  Users+CoreDataProperties.swift
//  Nba Fantasy
//
//  Created by Vinicius Mangueira Correia on 26/10/17.
//  Copyright © 2017 Vinicius Mangueira Correia. All rights reserved.
//
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func userFetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var login: String?
    @NSManaged public var email: String?
    @NSManaged public var senha: String?

}
