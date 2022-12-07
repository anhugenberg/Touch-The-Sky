//
//  CompletionFormView.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 11/11/22.
//

import SwiftUI

struct CompletionFormView: View {
    
    @State private var dateValue = Date()
    @State var dateString: String = ""
    @State var entryString: String = ""
    @State var storeFormArray: [String] = UserDefaults.standard.array(forKey: "CompletionEntries") as? [String] ?? [String]()
    
    let dateFormatter = DateFormatter()
    
    var body: some View {
        Form {
            Section{
                DatePicker(selection: $dateValue, in: ...Date(), displayedComponents: .date) {
                        Text("Completion Date")
                }
            }
            Section{
                TextField("Completion Entry", text: $entryString)
            }
            Button("Save"){
                dateFormatter.dateFormat = "MMMM d, yyyy"
                dateString = dateFormatter.string(from: dateValue)
                storeFormArray.append(dateString)
                storeFormArray.append(entryString)
                UserDefaults.standard.set(storeFormArray, forKey: "CompletionEntries")
                
            }
            .foregroundColor(Color.blue)
            .frame(maxWidth: .infinity, alignment: .center)
            Section(header: Text("Saved:")){
                ForEach(storeFormArray, id: \.self) { entry in
                                Text("\(entry)")
                }
            }
        }
    }
}


struct CompletionFormView_Previews: PreviewProvider {
    static var previews: some View {
        CompletionFormView()
    }
}
