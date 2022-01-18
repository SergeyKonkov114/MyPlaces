//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Сергей Коньков on 12.12.2021.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
    
    deinit {
        print("deinit", StorageManager.self)
    }
}
