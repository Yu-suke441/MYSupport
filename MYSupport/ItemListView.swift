//
//  ItemListView.swift
//  MYSupport
//
//  Created by Yusuke Murayama on 2020/12/12.
//

import SwiftUI

struct ItemListView: View {
    @EnvironmentObject var store: ItemStore
    let items: [Item]
    
    
    var body: some View {
        List {
            
                ForEach(items) { item in
                    HStack {
                        ItemRowView(item: item)
                    }
                    
                }
        }
        .navigationBarTitle("Realmテスト")
    }
}

