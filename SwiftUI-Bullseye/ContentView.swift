//
//  ContentView.swift
//  SwiftUI-Bullseye
//
//  Created by Ruaidhrí O'Neill on 18/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
            Text("89")
            HStack {
                Text("1")
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Hit Me!")
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
