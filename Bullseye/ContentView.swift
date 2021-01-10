//
//  ContentView.swift
//  Bullseye
//
//  Created by Alicia Beltran on 21/12/20.
//

import SwiftUI

struct ContentView: View {
    @State private var isDialogVisible: Bool = false
    @State private var isKnockDislogVisible: Bool = false
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
                self.isDialogVisible = true
            }) {
                Text("HIT ME")
            }.alert(isPresented: $isDialogVisible, content: {
                return Alert(
                    title: Text("Hello"),
                    message: Text("You click it"),
                    dismissButton: .default(Text("OK"))
                )
            })
            Button(action: {
                self.isKnockDislogVisible = true
            }) {
                    Text("Knock Knock")
            }.alert(isPresented: $isKnockDislogVisible, content: {
                return Alert(
                    title: Text("Who is there ?"),
                    message: Text("Litle old lady"),
                    dismissButton: .default(
                        Text("Litle old  lady who?")
                    )
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
