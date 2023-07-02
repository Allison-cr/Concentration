//
//  Sozdanie.swift
//  Concentration
//
//  Created by Alexander Suprun on 04.06.2023.
//

import Foundation
import SwiftUI


let cardValues_animal:[String] = ["🐶","🐱","🐭","🐻","🐼","🐸","🐽","🐔","🙈","🦁"]
let cardValues_fruit:[String] = ["🍏","🍐","🍊","🍌"]
let cardValues_hearts:[String] = ["🩷","❤️","🧡","💛","💚","🩵","💙","💜","🖤","🩶","🤍","🤎","❤️‍🔥","❤️‍🩹","💖","💝","💕","💞","💘","❣️"]

func createCardListMedium() -> [Card] {
   
    var cardList = [Card]()
        for cardValue in cardValues_animal{
            cardList.append(Card(text: cardValue))
            cardList.append(Card(text: cardValue))
            
        }
        return cardList
    
}
func createCardListEasy() -> [Card] {
   
    var cardList = [Card]()
        for cardValue in cardValues_fruit{
            cardList.append(Card(text: cardValue))
            cardList.append(Card(text: cardValue))
            
        }
        return cardList
    
}
func createCardListHard() -> [Card] {
   
    var cardList = [Card]()
        for cardValue in cardValues_hearts{
            cardList.append(Card(text: cardValue))
            cardList.append(Card(text: cardValue))
            
        }
        return cardList
    
}
let faceDownCard = Card(text: "?")
