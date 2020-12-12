//
//  ContentView.swift
//  MYSupport
//
//  Created by Yusuke Murayama on 2020/12/08.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    @EnvironmentObject var store: ItemStore
    
    
    var body: some View {
        
        NavigationView {
            ItemListView(items: store.items)
        }
        
        
         
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
