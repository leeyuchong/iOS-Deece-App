//
//  ContentView.swift
//  iOS-Deece
//
//  Created by Lee Yuchong on 22/3/21.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(viewModel: ViewModel())
    }
}
