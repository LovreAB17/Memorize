//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Lovre Budimir on 28/10/2020.
//

import SwiftUI

func createCardContent(pairIndex: Int) -> String {
    return "😃"
}

class EmojiMemoryGame: ObservableObject {
    
    @Published private var memoryGame: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        var emojis: Array<String> = ["👻", "😃", "🕷", "💀", "🎃", "🧟", "🧛🏼", "👽"]
        emojis.shuffle()
        
        let numberOfPairsOfCards = Int.random(in: 2...5)
        return MemoryGame<String>(numberOfPairsOfCards: numberOfPairsOfCards) { pairIndex in
                return emojis[pairIndex]
        }  // Model
    }
    
        
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        memoryGame.cards  //or return memoryGame.cards
    }
    
    // MARK: - Intent(s)

    func choose(card: MemoryGame<String>.Card){
        memoryGame.choose(card: card)
    }
    
    func resetGame() {
        memoryGame = EmojiMemoryGame.createMemoryGame()
    }
    
}


