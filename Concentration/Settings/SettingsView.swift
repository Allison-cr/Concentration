//
//  Settings.swift
//  Concentration
//
//  Created by Alexander Suprun on 04.06.2023.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var  presentationMode
    @State private var isSettingsViewEasyPresented = false
    @State private var isSettingsViewMediumPresented = false
    @State private var isSettingsViewHardPresented = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.pink,.purple]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
           
            VStack{
                
                Button{
                    self.isSettingsViewEasyPresented.toggle()
                }label: {
                    GameButton(title: "Easy", backgroundColor: Color(.systemCyan))
                }.sheet(isPresented: $isSettingsViewEasyPresented){
                    EasyView()
                }
               
                Button{
                    self.isSettingsViewMediumPresented.toggle()
                }label: {
                    GameButton(title: "Medium", backgroundColor: Color(.systemCyan))
                }.sheet(isPresented: $isSettingsViewMediumPresented){
                    MediumView()
                }
                
                Button{
                    self.isSettingsViewHardPresented.toggle()
                }label: {
                    GameButton(title: "Hard", backgroundColor: Color(.systemCyan))
                }.sheet(isPresented: $isSettingsViewHardPresented){
                    HardView()
                }
//                Button{
//                    self.presentationMode.wrappedValue.dismiss()
//                }label: {
//                    GameButton(title: "Back", backgroundColor: Color(.systemRed))
//                }.sheet(isPresented: $isSettingsViewPresented){
//                    HomeView()
 //               }
            }
            
            
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
