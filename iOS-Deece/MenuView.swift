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
            List(viewModel.menuItems, id: \.id) { item in
                HStack{
                    Text(item.name)
                    Button(action: {
                        viewModel.savedItems.contains(item) ? viewModel.unstar(item) : viewModel.star(item)
                    }) {
                        Image(systemName: viewModel.savedItems.contains(item) ? "trash" : "star.fill" )
                            .font(.body)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.yellow)
                            .cornerRadius(40)
                    }
                    
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(viewModel: ViewModel())
    }
}
