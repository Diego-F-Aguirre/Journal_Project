//
//  EntryController.swift
//  Journal
//
//  Created by Adam Aldous on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import CoreData

class EntryController {
    
    
    private let entryKey = "entries"
    
    static let sharedInstance = EntryController()
    
    var entriesArray: [Entry] {
        let request = NSFetchRequest(entityName: "Entry")
        
        let moc = Stack.sharedStack.managedObjectContext
        
        do {
            return try moc.executeFetchRequest(request) as! [Entry]
        } catch {
            return []
        }
    }
    
    
    func addEntry(entry: Entry) {
        self.saveToPersistentStorage()
    }
    
    func removeEntry(entry: Entry) {
        
        entry.managedObjectContext?.deleteObject(entry)
        saveToPersistentStorage()
        
    }
    
    
    func saveToPersistentStorage() {
        let moc = Stack.sharedStack.managedObjectContext
        do {
            try moc.save()
        } catch {
            print("Error saving Managed Object Context.Items not saved.")
        }
    }
    
    
    
}