//
//  MenuSuggestionSection.swift
//  Cafe
//
//  Created by seosh on 5/2/22.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    @Binding var coffeeMenu: [CoffeeMenu]
    
    var body: some View {
        VStack {
            Text("\(User.shared.userName)님을 위한 추천메뉴")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16.0)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(coffeeMenu)
                    {
                        menu in
                        MenuSuggestionItemView(coffeeMenu: menu)
                    }
                }
                .padding(.horizontal, 16.0)
            }
        } //VStack
        
        
        
    }
}

struct MenuSuggestionItemView: View {
    let coffeeMenu: CoffeeMenu
    var body: some View {
        VStack {
            coffeeMenu.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
            Text(coffeeMenu.name)
                .font(.caption)
        }
    }
}

