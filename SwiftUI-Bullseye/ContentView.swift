//
//  ContentView.swift
//  SwiftUI-Bullseye
//
//  Created by Ruaidhrí O'Neill on 18/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false

    @State private var sliderValue: Double = 50.0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2)
                .multilineTextAlignment(.center)
                .lineSpacing(4)
                .font(.footnote)
            
            Text("89")
                .kerning(-1)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack(spacing: 25) {
                Text("1")
                    .bold()
                
                Slider(value: $sliderValue, in: 1...100)
                
                Text("100")
                    .bold()
            } .padding(25)
            
            Button(action: {
                self.alertIsVisible = true
            }, label: {
                Text("HIT ME")
            })
            .alert(isPresented: $alertIsVisible, content: {
                
                let roundedValue: Int = Int(self.sliderValue.rounded())
                
                return Alert(title: Text("Hello there!"),
                             message: Text("The value of the slider is \(roundedValue)"),
                             dismissButton: .default(Text("Close this alert")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
