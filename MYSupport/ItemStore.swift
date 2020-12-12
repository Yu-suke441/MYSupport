//
//  ItemStore.swift
//  MYSupport
//
//  Created by Yusuke Murayama on 2020/12/12.
//


import RealmSwift

final class ItemStore: ObservableObject {
    
    private var itemResults: Results<ItemDB>
    
    init(realm: Realm) {
        itemResults = realm.objects(ItemDB.self)
    }
    
    var items: [Item] {
        itemResults.map(Item.init)
    }
    
}


