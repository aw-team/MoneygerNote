//
//  ExpenceLogDao.swift
//  MoneygerNote
//
//  Created by Takaaki Yoshioka on 2015/09/13.
//  Copyright © 2015年 JBS. All rights reserved.
//

import Foundation
import RealmSwift

class ExpenceLogDao: Object {
    dynamic var expenceItem: ExpenceItem?
    dynamic var expenceDateTime = NSDate(timeIntervalSince1970: 1)
}