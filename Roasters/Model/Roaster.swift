//
//  Roaster.swift
//  Roasters
//
//  Created by Laurent B on 17/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit
import MapKit
import CloudKit
import CoreLocation

class Roaster {
    
    static let recordType = "Roaster"
    private let id: CKRecord.ID
    let database: CKDatabase
    
    let name: String
    let description: String
    
    init?(record: CKRecord, database: CKDatabase){
        guard
            let name = record["name"] as? String,
            let description = record["description"] as? String
            else { return nil }
        id = record.recordID
        self.name = name
        self.description = description
        self.database = database
    }
    
}
    
