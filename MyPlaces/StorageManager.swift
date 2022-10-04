//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Yevhen Danilov on 21/08/2022.
//  Copyright © 2022 Yevhen Danilov. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deliteObject (place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
}
