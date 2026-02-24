//
//  ContentView.swift
//  DungeonDice
//
//  Created by Jim Walejko on 2/17/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Roll a die!"
    private let diceTypes = [4, 6, 8, 10, 12, 20, 100]
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
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 110))]){
                ForEach(diceTypes, id: \.self) { diceType in Button("\(diceType)-sided"){
                    rollDie(sides: diceType)
                }
                .font(.title2)
                .lineLimit(1)
                .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: false)
                .buttonStyle(.borderedProminent)
                .foregroundStyle(.white)
                .tint(.red)
                }
            }
        }
        .padding()
    }
    
    func rollDie(sides: Int) {
        //return "You rolled \(Int.random(in: 1...sides)) on a \(sides) sided die."
        // Instructor solution =
         let result = Int.random(in: 1...sides)
         message = "You rolled a \(result) on a \(sides)-sided die."
    }
    
}

#Preview {
    ContentView()
}
