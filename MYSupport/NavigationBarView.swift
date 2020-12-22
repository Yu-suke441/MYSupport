//
//  NavigationBarView.swift
//  MYSupport
//
//  Created by Yusuke Murayama on 2020/12/16.
//

import SwiftUI
import FSCalendar

struct NavigationBarView: View {
    @Environment(\.timeZone) var timeZone
    
    @State private var selectDate = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.timeZone = timeZone
        return formatter
    }
    
    @State private var showsDatePicker = false
    
    
    var body: some View {
        HStack {
            Button(action: {
                    
            }, label: {
                Text("\(selectDate, formatter: dateFormatter)")
                    .onTapGesture {
                        self.showsDatePicker.toggle()
                    }.sheet(isPresented: $showsDatePicker) {
                        CalendarView()
                    }
                    .font(.headline)
                    .padding()
            })
            
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("設定")
                
            })
            .font(.body)
            .padding()
        }
        .frame(height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
        .foregroundColor(.white)
    
        
            
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}


struct CalendarView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIView {
        return FSCalendar(frame: CGRect(x: 0.0, y: 40.0, width: .infinity, height: 300.0))
    }

    func updateUIView(_ uiView: UIView, context: Context) {
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
