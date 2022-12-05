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
    
    @State var text: String = UserDefaults.standard.string(forKey: "TEXT_KEY") ?? ""
    @State var inputText: String = ""
    
    var body: some View {
//        NavigationView{
//            VStack{
//                Form{
//                    Section{
//                        DatePicker(selection: $dateValue, in: ...Date(), displayedComponents: .date) {
//                                Text("Completion Date")
//                            }
//                    }
//                    Section{
//                        DatePicker(selection: $dateValue, in: ...Date(), displayedComponents: .hourAndMinute) {
//                                Text("Completion Time")
//                            }
//                    }
//                    Section{
//                        TextField("Jornal Entry:", text: $journalEntry)
//                    }
//                }
//            }
//            .toolbar{
//                ToolbarItem(placement: .confirmationAction){
//                    Button("Done"){
//
//                    }
//                }
//            }
//        }
        Form {
            Section(header: Text("date, time, stories, etc")){
                TextField("Add some text here.", text: $inputText)
            }
            Button("Save"){
                UserDefaults.standard.set(inputText, forKey: "TEXT_KEY")
                text = inputText
                print("Saved: \(inputText)")
            }
            .foregroundColor(Color.blue)
            .frame(maxWidth: .infinity, alignment: .center)
            Section(header: Text("Saved Entry:")){
                Text(text)
            }
        }
    }
}


struct CompletionFormView_Previews: PreviewProvider {
    static var previews: some View {
        CompletionFormView()
    }
}
