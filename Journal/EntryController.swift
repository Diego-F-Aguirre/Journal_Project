//
//  EntryController.swift
//  Journal
//
//  Created by Adam Aldous on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class EntryController {
    
    static let sharedInstance = EntryController()
    
    var entriesArray: [Entry]
    
    init() {
        self.entriesArray = []
    }
    
    func addEntry(entry: Entry) {
        entriesArray.append(entry)
    }
    
    func removeEntry(indexPath: NSIndexPath) {
        entriesArray.removeAtIndex(indexPath.row)
    }
}