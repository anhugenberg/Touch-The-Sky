//
//  CompletionFormView.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 11/11/22.
//

import SwiftUI

struct CompletionFormView: View {
    
    @State private var dateValue = Date()
    @State var timeValue: String = ""
    @State var journalEntry: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Section{
                        DatePicker(selection: $dateValue, in: ...Date(), displayedComponents: .date) {
                                Text("Completion Date")
                            }
                    }
                    Section{
                        DatePicker(selection: $dateValue, in: ...Date(), displayedComponents: .hourAndMinute) {
                                Text("Completion Time")
                            }
                    }
                    Section{
                        TextField("Jornal Entry:", text: $journalEntry)
                    }
                }
            }
            //.navigationTitle("Completion Form")
            .toolbar{
                ToolbarItem(placement: .confirmationAction){
                    Button("Done"){
                        
                    }
                }
//                ToolbarItem(placement: .navigationBarLeading){
//                    Button("Cancel"){
//
//                    }
//                }
            }
        }
    }
}


struct CompletionFormView_Previews: PreviewProvider {
    static var previews: some View {
        CompletionFormView()
    }
}
