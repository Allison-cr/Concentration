//
//  MediumView.swift
//  Concentration
//
//  Created by Alexander Suprun on 04.06.2023.
//

import SwiftUI

struct MediumView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    private var fourColumnGrid = [GridItem(.flexible()),
                                   GridItem(.flexible()),
                                   GridItem(.flexible()),
                                   GridItem(.flexible()),]
    private var sixColumnGrid = [GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible()),]
       
    

    @State var cards = createCardListMedium().shuffled()
    @State var MatchedCards = [Card]()
    @State var UserChoices = [Card]()
    
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.pink,.purple]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Just play")
                        .font(.largeTitle)
                    
                    
                    LazyVGrid(columns: fourColumnGrid,spacing: 10){
                        ForEach(cards){card in
                            CardView(card: card,
                                     width: Int(geo.size.width/4-10),
                                     MatchedCards : $MatchedCards,
                                     UserChoices: $UserChoices)
                        }
                    }
                    
                    
                }
            }
        }
    }
    
}


struct MediumView_Previews: PreviewProvider {
    static var previews: some View {
        MediumView()
    }
}
