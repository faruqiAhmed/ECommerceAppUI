//
//  BaseView.swift
//  ECommerceAppUI
//
//  Created by Md Omar Faruq on 9/15/21.
//

import SwiftUI

struct BaseView: View {
    @StateObject var baseData = BaseViewModel()
   
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        TabView(selection: $baseData.currentTab){
            Text("Home")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.04))
                .tag(Tab.Home)
            Text("heart")
                .tag(Tab.Heart)
            Text("Clipboard")
                .tag(Tab.ClipBoard)
            Text("Person")
                .tag(Tab.Person)
            
        }
        .overlay(
    // Custom Tab Bar...
            HStack(spacing: 0){
                // tabButton..
                TabButton(Tab: .Home)
                TabButton(Tab: .Heart)
                TabButton(Tab: .ClipBoard)
                TabButton(Tab: .Person)
                
            }
            ,alignment: .bottom
        
        )
        
    }
    @ViewBuilder
    func TabButton(Tab: Tab)-> some View {
        Button {
            withAnimation{
                baseData.currentTab = Tab
            }
            
        } label: {
            
            Image(Tab.rawValue)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fill)
                .frame(width: 25, height: 25)
                .foregroundColor(baseData.currentTab == Tab ? Color("DarkBlue") : Color.gray.opacity(0.5))
                .frame(maxWidth: .infinity)
        }
        
    }

}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
