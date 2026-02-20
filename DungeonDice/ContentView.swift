//
//  ContentView.swift
//  DungeonDice
//
//  Created by Jim Walejko on 2/17/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Roll a die!"
    var body: some View {
        VStack {
            Text("Dungeon Dice!")
            
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.red)
            Spacer()
           
            Text(message)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Spacer()
            
            VStack{
                HStack {
                    Button("4-sided"){
                        message = rollDie(sides: 4)
                    }
                    Spacer()
                    Button("6-sided"){
                        message = rollDie(sides: 6)
                    }
                    Spacer()
                    Button("8-sided"){
                        message = rollDie(sides: 8)
                    }
                }
                
                HStack {
                    Button("10-sided"){
                        message = rollDie(sides: 10)
                    }
                    Spacer()
                    Button("12-sided"){
                        message = rollDie(sides: 12)
                    }
                    Spacer()
                    Button("20-sided"){
                        message = rollDie(sides: 20)
                    }
                }
                
                Button("100-sided"){
                    message = rollDie(sides: 100)
                }
                
            }// vStack
            .buttonStyle(.borderedProminent)
            .foregroundStyle(.white)
            .tint(.red)
            .font(.title2)
        }
        .padding()
    }
    
    func rollDie(sides: Int) -> String{
        return "You rolled \(Int.random(in: 1...sides)) on a \(sides) sided die."
        // Instructor solution =
        // let result = Int.random(in: 1...sides)
        // message = "You rolled a \(result) on a \(sides)-sided die."
    }
    
}

#Preview {
    ContentView()
}
