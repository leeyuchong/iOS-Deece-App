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
}
