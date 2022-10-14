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
    static func seedData() {

              let places = realm.objects(Place.self)
              
              guard places.count == 0 else { return }
              let restaurantNames = [
                        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
                        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
                        "Speak Easy", "Morris Pub", "Вкусные истории",
                        "Классик", "Love&Life", "Шок", "Бочка"
                    ]
              for element in restaurantNames {
                  let newPlace = Place(name: element,
                                       location: "Uzgorod",
                                       type: "restoraunt",
                                       imageData: UIImage(named: element)?.pngData())
                  StorageManager.saveObject(newPlace)
              }
          }
}
