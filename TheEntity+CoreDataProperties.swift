//
//  TheEntity+CoreDataProperties.swift
//  SwiftHelloWorld
//
//  Created by 金本翔太 on 2017/03/09.
//  Copyright © 2017 金本翔太. All rights reserved.
//

import Foundation
import CoreData


extension TheEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TheEntity> {
        return NSFetchRequest<TheEntity>(entityName: "TheEntity");
    }
    
    @NSManaged public var name: String?
    @NSManaged public var id: Int16
    @NSManaged public var time: NSDate?

}
