//
//  BaseViewModel.swift
//  ECommerceAppUI
//
//  Created by Md Omar Faruq on 9/15/21.
//

import SwiftUI

class  BaseViewModel: ObservableObject {

   // Tab Bar
    
    @Published var currentTab: Tab = .Home
   
}

enum Tab: String{
    case Home = "home2"
    case Heart = "heart"
    case ClipBoard = "clipboard"
    case Person = "person"
}

