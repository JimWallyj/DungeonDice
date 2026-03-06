//
//  ContentView.swift
//  DungeonDice
//
//  Created by Jim Walejko on 2/17/26.
//

import SwiftUI

struct ContentView: View {
    enum Dice: Int, CaseIterable, Identifiable{
        case four = 4, six = 6, eight = 8, ten = 10, twelve = 12, twenty = 20, hundred = 100
        
        //var dieName: String { "\(self)".capitalized }
        var id: Int{self.rawValue}
        
        var roll: Int{ Int.random(in: 1...self.rawValue)
        }
    }
    
    @State private var message = "Roll a die!"
    //private let diceTypes = [4, 6, 8, 10, 12, 20, 100]
    var diceTypes: [Dice] = []
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
//                ForEach(Dice.allCases, id: \.self) { die in Button("\(die.rawValue)-sided"){
                ForEach(Dice.allCases) { die in Button("\(die.rawValue)-sided"){
                    //rollDie(sides: diceType.rawValue)
                    message = "You rolled a \(die.roll) on a \(die)-sided die."
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
    
//    enum Dice: Int{
//        case four = 4
//        case six = 6
//        case eight = 8
//        case ten = 10
//        case twelve = 12
//        case twenty = 20
//        case hundred = 100
//    }
    
//    func roll(sides: Int){
//        let result = Int.random(in: 1...sides)
//        message = "You rolled a \(result) on a \(sides)-sided die."
//    }
    
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
