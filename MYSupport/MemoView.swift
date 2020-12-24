//
//  MemoView.swift
//  MYSupport
//
//  Created by Yusuke Murayama on 2020/12/22.
//

import SwiftUI
import RealmSwift

struct MemoView: View {
    @State var isOnToggle = false
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
                Button(action: {
                    self.isOnToggle.toggle()
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
                .sheet(isPresented: $isOnToggle) {
                    CharacterInputView(item: Item(id: 1, name: "", icon_file: "", record_type: "", odr: 1))
                }
                
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

struct MemoView_Previews: PreviewProvider {
    static var previews: some View {
        MemoView(item: Item(id: 1, name: "", icon_file: "", record_type: "", odr: 1))
    }
}
