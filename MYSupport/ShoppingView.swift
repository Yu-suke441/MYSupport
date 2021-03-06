//
//  ShoppingView.swift
//  MYSupport
//
//  Created by Yusuke Murayama on 2020/12/22.
//

import SwiftUI
import RealmSwift

struct ShoppingView: View {
    @EnvironmentObject var store: ItemStore
    let item: Item!
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Image(item.icon_file)
                    .resizable()
                    .frame(width:60, height: 60)
                Text(item.name)
                    .font(.title)
                Spacer()
                
            }.padding()
            
            HStack {
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
                
                
                Spacer()
                
                
                    
                    Button(action: {}, label: {
                        Image("chart")
                            .resizable()
                            .frame(width:60, height: 60)
                    })
                    .padding()
                    
                
                
                
            }
            
        }
        .background(Color(.red))
        .frame(maxWidth: .infinity)
        
    }
}

struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView(item: Item(id: 1, name: "", icon_file: "", record_type: "", odr: 1))
    }
}
