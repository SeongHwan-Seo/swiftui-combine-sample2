//
//  SettingView.swift
//  Cafe
//
//  Created by seosh on 5/9/22.
//

import SwiftUI

struct SettingView: View {
//    init() {
//        UITableView.appearance().backgroundColor = .systemBackground
//    } 앞 단에서 설정을 하였기 때문에 설정을 하지 않아도 됨.
    var body: some View {
        List {
            Section {
                SettingUserInfoSectionView()
            }
            Button("회원 정보 수정") {}
            .accentColor(.black)
            Button("회원 탈퇴") {}
            .accentColor(.black)
        }
        .navigationTitle("설정")
        .listStyle(GroupedListStyle())
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingUserInfoSectionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(User.shared.userName)
                    .font(.title)
                Text(User.shared.account)
                    .font(.caption)
            }
            Spacer()
            Button(
                action: {
                print("tapped button")
            }, label: {
                Text("로그아웃")
                    .accentColor(.green)
                    .font(.system(size: 14.0, weight: .bold, design: .default))
                }
            )
            .padding(8)
            .overlay(Capsule().stroke(Color.green))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
