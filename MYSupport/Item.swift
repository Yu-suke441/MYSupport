//
//  Item.swift
//  MYSupport
//
//  Created by Yusuke Murayama on 2020/12/11.
//

// RealmDBと同じ要素を持つ構造体Itemを作成

import Foundation


struct Item: Identifiable {
    let id : Int
    let name: String
    let icon_file: String
    let record_type: String
    let odr: Int
}

extension Item {
    init(itemDB: ItemDB) {
        id = itemDB.id
        name = itemDB.name
        icon_file = itemDB.icon_file
        record_type = itemDB.record_type
        odr = itemDB.odr
    }
}


