//
//  ContentView.swift
//  Bullseye
//
//  Created by Alicia Beltran on 21/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                VStack{
                    Text("🎯🎯🎯 \nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO ")
                        .bold()
                        .kerning(2.0)
                        .font(.footnote)
                        .lineSpacing(4.0)
                        .multilineTextAlignment(.center)
                    
                    Text("89")
                        .kerning(-1.0)
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                HStack {
                    Text("1")   
                        .bold()
                        .padding()
                    Slider(value: .constant(50), in: 1.0 ... 100.0)
                    Text("100")
                        .bold()
                        .padding()
                }
            }
            Button(action: {
                print("Hello Alicia")
            }) {
                Text("HIT ME")
            }
        }
           
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
