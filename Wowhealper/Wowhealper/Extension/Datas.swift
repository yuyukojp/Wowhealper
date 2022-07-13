//
//  Datas.swift
//  Wowhealper
//
//  Created by 金斗石 on 2022/7/12.
//

import RealmSwift

class Cloth: Object {
    @objc dynamic var id = 0
    @objc dynamic var itemName = ""
    @objc dynamic var itemPosition = ""
    @objc dynamic var maxItemLevel = 0
    @objc dynamic var criticalStrike = 0
    @objc dynamic var haste = 0
    @objc dynamic var mastery = 0
    @objc dynamic var versatility = 0
    
    //Primary Keyの設定
    override static func primaryKey() -> String? {
        return "id"
    }
}

class Leather: Object {
    @objc dynamic var id = 0
    @objc dynamic var itemName = ""
    @objc dynamic var itemPosition = ""
    @objc dynamic var maxItemLevel = 0
    @objc dynamic var criticalStrike = 0
    @objc dynamic var haste = 0
    @objc dynamic var mastery = 0
    @objc dynamic var versatility = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

class Mail: Object {
    @objc dynamic var id = 0
    @objc dynamic var itemName = ""
    @objc dynamic var itemPosition = ""
    @objc dynamic var maxItemLevel = 0
    @objc dynamic var criticalStrike = 0
    @objc dynamic var haste = 0
    @objc dynamic var mastery = 0
    @objc dynamic var versatility = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

class Plate: Object {
    @objc dynamic var id = 0
    @objc dynamic var itemName = ""
    @objc dynamic var itemPosition = ""
    @objc dynamic var maxItemLevel = 0
    @objc dynamic var criticalStrike = 0
    @objc dynamic var haste = 0
    @objc dynamic var mastery = 0
    @objc dynamic var versatility = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

/*
itemPosition:
头：head
项链：neck
肩膀：shoulder
披风：back
胸：chest
护腕：wrist
手套：hands
腰带：waist
裤子：legs
鞋：feet
戒指：finger
 */
