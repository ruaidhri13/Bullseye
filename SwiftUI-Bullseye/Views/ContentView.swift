//
//  ContentView.swift
//  SwiftUI-Bullseye
//
//  Created by Ruaidhrí O'Neill on 18/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    
    @State private var sliderValue = 50.0
    
    @State private var game = Game()
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2)
                .multilineTextAlignment(.center)
                .lineSpacing(4)
                .font(.footnote)
            
            Text(String(game.target))
                .kerning(-1)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack(spacing: 25) {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
                    .bold()
            } .padding()
            
            Button(action: {
                alertIsVisible = true
            }, label: {
                Text("Hit me".uppercased())
                    .bold()
                    .font(.title3)
            })
            .padding(20)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(21)
            
            .alert(isPresented: $alertIsVisible, content: {
                
                let roundedValue = Int(sliderValue.rounded())
                
                return Alert(title: Text("Hello there!"),
                             message: Text("The value of the slider is \(roundedValue) \n" + "You scored \(game.points(sliderValue: roundedValue)) points this round" ),
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
