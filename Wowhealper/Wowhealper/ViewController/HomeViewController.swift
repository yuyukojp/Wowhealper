//
//  ViewController.swift
//  Wowhealper
//
//  Created by 金斗石 on 2022/7/8.
//

import UIKit
import RealmSwift
import SwiftUI

class HomeViewController: BaseViewController {
    @IBOutlet weak var showDetailBtn: UIButton!
    @IBOutlet weak var addBtn: UIButton!
    
    @IBOutlet weak var printBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title = "Title"
        let results = realm.objects(Cloth.self)
        if results.count == 0 {
            addAllData()
        }
    }

    @IBAction func tapAddBtn(_ sender: Any) {
        
//        let searchState = "haste"
//        let maxValue = realm.objects(Cloth.self).value(forKeyPath: "@max.\(searchState)") as! Int
//        let maxItemData = realm.objects(Cloth.self).filter("\(searchState) == \(maxValue)")
        let itemData = realm.objects(Cloth.self).filter("id == \(fundItem(itemType: 0, firstState: "criticalStrike", secoundState: "haste"))")
        print(itemData.count)
        print(itemData)
    }
    
    @IBAction func tapPrintbtn(_ sender: Any) {
        let results = realm.objects(Cloth.self)
        print(results.count)
    }
    
    @IBAction func tapShowDetailBtn(_ sender: Any) {
        Router.shared.showDetailView(from: self)
    }
    
    func fundItem(itemType: Int, firstState: String, secoundState: String) -> Int {
        var itemId = -1
        let haveFirstStateData = realm.objects(Cloth.self).filter("\(firstState) > 0")
        let haveSecoundStateData = haveFirstStateData.filter("\(secoundState) > 0")

        if haveSecoundStateData.count > 0 {
            let maxFirstStateValue = haveSecoundStateData.value(forKeyPath: "@max.\(firstState)") as! Int
            let maxItemData = haveSecoundStateData.filter("\(firstState) == \(maxFirstStateValue)")
            if maxItemData.count > 0 {
                let secoundStateData = maxItemData.value(forKeyPath: "@max.\(secoundState)") as! Int
                let secoundItemDate = maxItemData.filter("\(secoundState) == \(secoundStateData)")
                itemId = secoundItemDate.first?.id ?? -1
            } else {
                itemId = maxItemData.first?.id ?? -1
            }
        }
        
        return itemId
    }
    
    func addAllData() {
        addDatas(itemType: 0, itemName: "test1", itemPosition: "head", maxItemLevel: 278, criticalStrike: 20, haste: 60, mastery: 0, versatility: 0)
        addDatas(itemType: 0, itemName: "test2", itemPosition: "head", maxItemLevel: 278, criticalStrike: 10, haste: 70, mastery: 0, versatility: 10)
        addDatas(itemType: 0, itemName: "test3", itemPosition: "head", maxItemLevel: 278, criticalStrike: 0, haste: 0, mastery: 11, versatility: 20)
        addDatas(itemType: 0, itemName: "test4", itemPosition: "head", maxItemLevel: 278, criticalStrike: 10, haste: 20, mastery: 20, versatility: 30)
    }
    
    func addDatas(itemType: Int, itemName: String, itemPosition: String, maxItemLevel: Int, criticalStrike: Int, haste: Int, mastery: Int, versatility: Int) {
        switch itemType {
        case 0:
            let currentItem = Cloth()
            currentItem.id = self.newId(model: currentItem) ?? 0
            currentItem.itemName = itemName
            currentItem.itemPosition = itemPosition
            currentItem.maxItemLevel = maxItemLevel
            currentItem.criticalStrike = criticalStrike
            currentItem.haste = haste
            currentItem.mastery = mastery
            currentItem.versatility = versatility
            try! realm.write {
                realm.add(currentItem)
            }
        case 1:
            let currentItem = Leather()
            currentItem.id = self.newId(model: currentItem) ?? 0
            currentItem.itemName = itemName
            currentItem.itemPosition = itemPosition
            currentItem.maxItemLevel = maxItemLevel
            currentItem.criticalStrike = criticalStrike
            currentItem.haste = haste
            currentItem.mastery = mastery
            currentItem.versatility = versatility
            try! realm.write {
                realm.add(currentItem)
            }
        case 2:
            let currentItem = Mail()
            currentItem.id = self.newId(model: currentItem) ?? 0
            currentItem.itemName = itemName
            currentItem.itemPosition = itemPosition
            currentItem.maxItemLevel = maxItemLevel
            currentItem.criticalStrike = criticalStrike
            currentItem.haste = haste
            currentItem.mastery = mastery
            currentItem.versatility = versatility
            try! realm.write {
                realm.add(currentItem)
            }
        case 3:
            let currentItem = Plate()
            currentItem.id = self.newId(model: currentItem) ?? 0
            currentItem.itemName = itemName
            currentItem.itemPosition = itemPosition
            currentItem.maxItemLevel = maxItemLevel
            currentItem.criticalStrike = criticalStrike
            currentItem.haste = haste
            currentItem.mastery = mastery
            currentItem.versatility = versatility
            try! realm.write {
                realm.add(currentItem)
            }
        default:
            break
        }

    }
    
}

