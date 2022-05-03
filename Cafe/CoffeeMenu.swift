//
//  CoffeMenu.swift
//  Cafe
//
//  Created by seosh on 5/2/22.
//

import SwiftUI

struct CoffeeMenu: Identifiable {
    let image: Image // UIImage
    let name: String
    
    let id = UUID()
    
    static let sample: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "콜드브루"),
        CoffeeMenu(image: Image("coffee"), name: "녹차라떼")
    ]
}
