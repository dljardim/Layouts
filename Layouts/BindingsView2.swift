//
//  Bindings2View.swift
//  Layouts
//
//  Created by Damian Jardim on 2/9/25.
//

import SwiftUI

struct BindingsView2: View {
    
    @State private var mySlider1 = 0.0
    @State private var mySlider2 = 0.0
    
    var body: some View {
        
        // Slider ----------------------------------------------------
        Slider(value: $mySlider1, in: 0.0...100.0)
        
        Text("mySlider1: \(mySlider1)")
        Text("mySlider2: \(mySlider1.formatted())")
        Text("mySlider3: \(Int(mySlider1))")
        Text("mySlider4: \(mySlider1.formatted(.number.precision(.fractionLength(0))))")
        Text("mySlider5: \(String(format: "%.0f", mySlider1))")
        
        
        // label closures
        Slider(value: $mySlider2, in: 0...100) {
            // accessability label
            Text("Volume Controls")
        } minimumValueLabel: {
            Image(systemName: "speaker.minus")
        } maximumValueLabel: {
            Image(systemName: "speaker.plus")
        }
    }
}

#Preview {
    BindingsView2()
}
