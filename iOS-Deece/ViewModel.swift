//
//  ViewModel.swift
//  iOS-Deece
//
//  Created by Lee Yuchong on 22/3/21.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published private var model: MenuData
    init(){
        model = MenuData()
    }
    
    // MARK: - Access to the Model
    var menuItems: [MenuItem] {
        model.menuItems
    }
    
    var savedItems: [MenuItem] {
        model.savedItems
    }
    
    // MARK:- INTENT
    func star(_ item: MenuItem){
        model.star(item)
    }
    
    func unstar(_ item: MenuItem){
        model.unstar(item)
    }
}
