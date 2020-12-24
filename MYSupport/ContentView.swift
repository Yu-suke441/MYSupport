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
        
        VStack(spacing: 0) {
            Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)).edgesIgnoringSafeArea(.top).frame(height:0)
                
            NavigationBarView()
            var columns: [GridItem] =
                     Array(repeating: .init(.flexible()), count: 2)
            ScrollView {
                LazyVGrid(columns: columns) {
                    CategoryView(item: Item(id: 0, name: "体重(kg)", icon_file: "weight-scale", record_type: "number", odr: 0))
                    CategoryView(item: Item(id: 1, name: "体温(℃)", icon_file: "thermometer", record_type: "number" , odr: 1))
                    CategoryView(item: Item(id: 2, name: "メモ", icon_file: "memo", record_type: "memo" , odr: 2))
                    CategoryView(item: Item(id: 3, name: "買い物(円)", icon_file: "shopping", record_type: "shopping" , odr: 3))
                    CategoryView(item: Item(id: 4, name: "一日一善", icon_file: "check-mark", record_type: "memo" , odr: 4))
                 }.font(.largeTitle)
            }.padding()
        }.background(Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)))
        .edgesIgnoringSafeArea(.bottom)
        
        
        
         
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
