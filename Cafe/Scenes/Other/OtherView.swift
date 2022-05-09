//
//  OtherView.swift
//  Cafe
//
//  Created by seosh on 5/9/22.
//

import SwiftUI

struct OtherView: View {
    init() { //화면전체의 백그라운드 배경 색 변경
        UITableView.appearance().backgroundColor = .systemBackground
    }
    var body: some View {
        NavigationView {
            List{
                ForEach(Menu.allCases) { section in
                    Section(
                        header: Text(section.title)
                        ) {
                            ForEach(section.menu, id: \.hashValue) {
                            raw in
                                NavigationLink(raw, destination: Text("\(raw)"))
                                    
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
                .navigationTitle("Other")
                .toolbar {
                    NavigationLink(destination: {
                        SettingView()
                    }, label: {
                        Image(systemName: "gear")
                    })
                }
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
