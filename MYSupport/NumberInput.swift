//
//  NumberInput.swift
//  MYSupport
//
//  Created by Yusuke Murayama on 2020/12/15.
//

import SwiftUI
import KeyboardObserving

struct NumberInput: View {
    
    @State private var showingModal = false
    
    
    var body: some View {
        Button(action: {
            self.showingModal.toggle()
        }) {
            Text("Show Modal")
        }.sheet(isPresented: $showingModal) {
            ModalView()
        }
    }
}

struct NumberInput_Previews: PreviewProvider {
    static var previews: some View {
        NumberInput()
    }
}


struct ModalView: View {
    @State var number = ""
    
    var body: some View {
        
        VStack {
            HStack {
                Image("体重計アイコン")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
                Text("体重")
                Spacer()
            }
            TextField("数値を入力してください", text: $number)
                .keyboardType(.decimalPad)
                .padding()
        }
        .keyboardObserving()
        
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}

