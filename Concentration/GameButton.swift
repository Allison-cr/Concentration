//
//  GameButton.swift
//  Concentration
//
//  Created by Alexander Suprun on 04.06.2023.
//

import Foundation
import SwiftUI

struct GameButton: View {
    let title : String
    let backgroundColor : Color
    
     var body: some View {
         Text(title)
             .font(.title)
             .fontWeight(.semibold)
             .frame(width: 300, height: 50)
             .background(backgroundColor)
             .foregroundColor(.white)
             .cornerRadius(20)
        }
            
}

struct GameButton_Previews: PreviewProvider {
    static var previews: some View {
        GameButton(title: "Play", backgroundColor: .red)
    }
}
