//
//  Item.swift
//  MYSupport
//
//  Created by Yusuke Murayama on 2020/12/08.
//

import Foundation
import RealmSwift

class ItemDB: Object {
    // id
    @objc dynamic var id = 0
    
    // 名前
    @objc dynamic var name = ""
    
    // アイコン
    @objc dynamic var icon_file = ""
    
    // 記録タイプ
    @objc dynamic var record_type = ""
    
    // 並べ替え
    @objc dynamic var odr = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
