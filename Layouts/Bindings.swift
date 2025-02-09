//
//  Bindings.swift
//  Layouts
//
//  Created by Damian Jardim on 2/8/25.
//

import SwiftUI

struct Bindings: View {
    
    @State private var pressCount:Int = 0
    @State private var myMoney:Double = 0.0
    
    @State private var myToggleBoolVariable:Bool = true
    @State private var myTextFieldVar:String = ""
    
    @State private var myColor:Color = Color(.blue)
    
    @State private var myDate:Date = Date()
    @State private var stepperValue:Int = 5
    
    func add(){
        pressCount += 1
    }
    
    var body: some View {
        VStack(alignment: .center){
            
            // Button ------------------------------------
            Text("Press count: \(String(pressCount))")
                .font(.title2)
            Button("Press Me!"){
                add()
            }
            .buttonStyle(.borderedProminent)
            
 
            
            // TextField ---------------------------
            TextField("Placeholder", text: $myTextFieldVar)
                .textFieldStyle(.roundedBorder)
            
            // TextField - currency formatting  ---------------------------
            TextField(
                "Currency (USD)",
                value: $myMoney,
                format: .currency(code: "USD")
            )
            .textFieldStyle(.roundedBorder)
            
            Text("TextField myMoney: \(myMoney)")
            
            Divider()
                .frame(width: .infinity, height: 40.0, alignment: .center)
                .border(.red, width: 1.0)
       
            // Toggle --------------------
            HStack(alignment:.center){
                Spacer()
                Toggle("ToggleLabel",isOn: $myToggleBoolVariable)
                Spacer()
            }
            Text("$myToggleBoolVariable: \(myToggleBoolVariable)")
            
            
            // Color Picker ---------------------
            ColorPicker("color picker text label", selection: $myColor)
            Text("Color selected: \(myColor.description)")
            
            Rectangle().frame(width: 100.0, height: 100.0, alignment: .center)
                .foregroundStyle(myColor)
            
            Rectangle().fill(myColor).frame(width: 50.0, height: 50.0, alignment: .center)
            
            
            // DatePicker ------------------
            DatePicker("DatePicker Title", selection: $myDate)
            Text("DatePicker: \(myDate.formatted())")
            
            // Stepper
            Stepper("Stepper value: \(stepperValue)", value:$stepperValue, in:1...10)
            
            Spacer()
            
        }
        .padding()

        
    }

}
    


#Preview {
    Bindings()
}
