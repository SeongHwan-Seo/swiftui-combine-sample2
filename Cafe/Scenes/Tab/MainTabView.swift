//
//  ContentView.swift
//  Cafe
//
//  Created by seosh on 4/28/22.
//

import SwiftUI



struct MainTabView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.textItem
                }
            OtherView()
                .tabItem {
                    Tab.other.imageItem
                    Tab.other.textItem
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

