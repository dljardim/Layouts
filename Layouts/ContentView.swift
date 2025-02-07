//
//  ContentView.swift
//  Layouts
//
//  Created by Damian Jardim on 2/7/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString1:String = "When the Genius Bar Needs Help, They call You!!"
    @State private var messageString2:String = "Great"
    @State private var messageString3:String = "Amazing Grace"
    
    
    var body: some View {
        VStack(spacing: 0) {
            Text(messageString1)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .padding()
                .frame(width: 200,height: 200)
                .border(.orange, width: 2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)

            
            Text(messageString2)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .padding()
                .frame(maxWidth: .infinity)
                .border(.orange, width: 2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .border(.orange, width: 2)
                

            
            Text(messageString3)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .padding()
                .frame(width: 200,height: 200)
                .border(.orange, width: 2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
            
            HStack{
                Button("Genius"){
                    // messageString1 = "When the Genius Bar Needs Help, They call You!!"
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                
                Button("Great"){
                    // messageString2 = "Great"
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                
                
                Button("Amazing"){
                    // messageString3 = "Amazing Grace"
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
            }
            .border(.orange, width: 2)

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
