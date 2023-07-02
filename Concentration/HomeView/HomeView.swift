//
//  HomeView.swift
//  Concentration
//
//  Created by Alexander Suprun on 04.06.2023.
//

import SwiftUI

struct HomeView: View {
    @State private var HomeViewModel = false
    
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [.pink,.purple]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack{
            
                Button{
                    self.HomeViewModel.toggle()
                }label: {
                    GameButton(title: "Play", backgroundColor: Color(.systemCyan))
                }
            }
            .sheet(isPresented: $HomeViewModel){
                SettingsView()
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
