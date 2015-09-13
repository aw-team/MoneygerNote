//
//  SampleDataMaker.swift
//  MoneygerNote
//
//  Created by Takaaki Yoshioka on 2015/09/13.
//  Copyright © 2015年 JBS. All rights reserved.
//

import Foundation
import RealmSwift

class SampleDataMeker {
    init() {
        let realm = try! Realm()
        
        
        
        try! realm.write {
            realm.deleteAll()
            
            let expenceItems = self.makeExpenceItems()
            for item in expenceItems {
                realm.create(ExpenceItem.self, value: item)
            }
            print(realm.objects(ExpenceItem))
        }
    }
    
    private func makeExpenceItems() -> [ExpenceItem] {
        let seeds = [
            ["itemId": 1, "groupId": 1, "itemName": "コーヒー", "position": 1, "categoryId": 2, "ammount": 300, "imageInfo": ""],
            ["itemId": 2, "groupId": 1, "itemName": "タバコ", "position": 2, "categoryId": 2, "ammount": 450, "imageInfo": ""],
            ["itemId": 3, "groupId": 1, "itemName": "昼食", "position": 3, "categoryId": 1, "ammount": 300, "imageInfo": ""],
            ["itemId": 4, "groupId": 2, "itemName": "夕食", "position": 1, "categoryId": 1, "ammount": 300, "imageInfo": ""]
        ]
        var dst = [ExpenceItem]()
        
        for seed: Dictionary in seeds {
            let item = ExpenceItem();
            item.itemId = seed["itemId"] as! Int
            item.groupId = seed["groupId"] as! Int
            item.itemName = seed["itemName"] as! String
            item.position = seed["position"] as! Int
            item.categoryId = seed["categoryId"] as! Int
            item.ammount = seed["ammount"] as! Int
            item.imageInfo = seed["imageInfo"] as! String
            dst.append(item)
        }
        
        return dst
    }
}
