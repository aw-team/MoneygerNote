//
//  ExpenceItem.swift
//  MoneygerNote
//
//  Created by Takaaki Yoshioka on 2015/09/13.
//  Copyright © 2015年 JBS. All rights reserved.
//

import Foundation
import RealmSwift

class ExpenceItem: Object {
    dynamic var itemId = 0
    dynamic var groupId = 0
    dynamic var itemName = ""
    dynamic var position = 0
    dynamic var categoryId = 0
    dynamic var ammount = 0
    dynamic var imageInfo = ""
    
    override static func primaryKey() -> String? {
        return "itemId"
    }
}
