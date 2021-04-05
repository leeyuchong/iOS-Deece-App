//
//  MenuData.swift
//  iOS-Deece
//
//  Created by Lee Yuchong on 22/3/21.
//

import Foundation

struct MenuData {
    var menuItems:[MenuItem] = [
        MenuItem(name: "Chicken Nuggets"),
        MenuItem(name: "Fried Chicken"),
        MenuItem(name: "Salad")
    ]
    
    var savedItems:[MenuItem] = []
    
    mutating func star(_ item:MenuItem){
        savedItems.append(item)
        print(savedItems)
    }
    mutating func unstar(_ item:MenuItem){
        savedItems = savedItems.filter{ $0.id != item.id }
        print(savedItems)
    }
}

struct MenuItem: Identifiable, Equatable {
    var id = UUID()
    var name: String
}
