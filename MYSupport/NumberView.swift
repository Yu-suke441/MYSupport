//
//  NumberView.swift
//  MYSupport
//
//  Created by Yusuke Murayama on 2020/12/22.
//

import SwiftUI
import RealmSwift

struct NumberView: View {
    
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
                
                VStack {
                    Button(action: {}, label: {
                        Image("graph")
                            .resizable()
                            .frame(width:60, height: 60)
                    })
                    Button(action: {}, label: {
                        Image("chart")
                            .resizable()
                            .frame(width:60, height: 60)
                    })
                    
                }.padding()
                
                
            }
            
        }
        .background(Color(.red))
        .frame(maxWidth: .infinity)
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView(item: Item(id: 1, name: "", icon_file: "", record_type: "", odr: 1))
    }
}
