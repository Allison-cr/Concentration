//
//  Memory.swift
//  Concentration
//
//  Created by Alexander Suprun on 04.06.2023.
//

import Foundation
import SwiftUI

class Card:Identifiable,ObservableObject {
    var id = UUID()
    @Published var isFaceUp = false
    @Published var isMatched = false
    var text : String
    
    init(text:String){
        self.text = text
    }
    func turnOver(){
        self.isFaceUp.toggle()
    }
}



