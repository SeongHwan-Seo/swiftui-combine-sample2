//
//  Tab.swift
//  Cafe
//
//  Created by seosh on 4/28/22.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    //associate value
    var textItem: Text {
        switch self {
        case .home: return Text("Home")
        case .other: return Text("Other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .other: return Image(systemName: "ellipsis")
        }
    }
}
