//
//  ContentView.swift
//  Bullseye
//
//  Created by Alicia Beltran on 21/12/20.
//

import SwiftUI

struct ContentView: View {
    @State private var isDialogVisible: Bool = false
    @State private var sliderValue: Double = 10.0
    @State private var game: Game = Game()
    
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
                    
                    Text("\(String(game.target))")
                        .kerning(-1.0)
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                HStack {
                    Text("1")
                        .bold()
                        .padding()
                    Slider(value: $sliderValue, in: 1.0 ... 100.0)
                    Text("100")
                        .bold()
                        .padding()
                }
            }
            Button(action: {
                print("Hello Alicia")
                self.isDialogVisible = true
            }) {
                Text("HIT ME")
            }.alert(isPresented: $isDialogVisible, content: {
                let roundedVal: Int  = Int(self.sliderValue.rounded())
                return Alert(
                    title: Text("Hello"),
                    message: Text("The slider value is \(roundedVal) your score is \(game.points(sliderValue: roundedVal))"),
                    dismissButton: .default(Text("OK"))
                )
            })
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
