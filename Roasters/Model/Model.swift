//
//  Model.swift
//  Roasters
//
//  Created by Laurent B on 17/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import Foundation
import CloudKit

class Model {
  // MARK: - iCloud Info
  let container: CKContainer
  let publicDB: CKDatabase
  let privateDB: CKDatabase
  
  // MARK: - Properties
  private(set) var roasters: [Roaster] = []
  static var currentModel = Model()
  
  init() {
    container = CKContainer.default()
    publicDB = container.publicCloudDatabase
    privateDB = container.privateCloudDatabase
  }
  
  @objc func refresh(_ completion: @escaping (Error?) -> Void) {
    let predicate = NSPredicate(value: true)
    let query = CKQuery(recordType: "Roaster", predicate: predicate)
    roasters(forQuery: query, completion)
  }
  
  private func roasters(forQuery query: CKQuery, _ completion: @escaping (Error?) -> Void) {
    publicDB.perform(query, inZoneWith: CKRecordZone.default().zoneID) { [weak self] results, error in
      guard let self = self else { return }
      if let error = error {
        DispatchQueue.main.async {
          completion(error)
        }
        return
      }
      guard let results = results else { return }
      self.roasters = results.compactMap {
        Roaster(record: $0, database: self.publicDB)
      }
      DispatchQueue.main.async {
        completion(nil)
      }
    }
  }
}
