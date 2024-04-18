//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Oleksii on 4/10/24.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
   
    static func saveObject(_ place: Place) {
        try! realm.write {
            
            realm.add(place)
        }
    }
}
