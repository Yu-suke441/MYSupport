//
//  ItemRowView.swift
//  MYSupport
//
//  Created by Yusuke Murayama on 2020/12/12.
//

import SwiftUI

struct ItemRowView: View {
    @EnvironmentObject var store: ItemStore
    let item: Item
    
    var body: some View {
        HStack {
            Text(String(item.id))
            Spacer()
            Text(item.name)
            Spacer()
            Text(item.icon_file)
            Spacer()
            Text(item.record_type)
            Spacer()
            Text(String(item.odr))
            Image(systemName: "trash.circle.fill")
                .resizable()
                .frame(width: 23, height: 24)
                .foregroundColor(.red)
        }
        
    }
}

