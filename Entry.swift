//
//  Entry.swift
//  Journal
//
//  Created by Diego Aguirre on 2/15/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import CoreData

@objc(Entry)
class Entry: NSManagedObject {


    convenience init(title: String, text: String, timeStamp: NSDate = NSDate(), context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        let entity = NSEntityDescription.entityForName("Entry", inManagedObjectContext: context)!
        
        self.init(entity: entity, insertIntoManagedObjectContext:context)
        
        self.title = title
        self.text = text
        self.timeStamp = timeStamp
    }
    
}
