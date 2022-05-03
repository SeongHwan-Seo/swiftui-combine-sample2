//
//  HomeHeaderView.swift
//  Cafe
//
//  Created by seosh on 5/3/22.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack(spacing: 16.0) {
            HStack(alignment: .top) {
                Text("""
                    \(User.shared.userName)님
                    반갑습니다!☕️
                    """)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
                Button(action: {
                    
                },
                       label: {
                    Image(systemName: "arrow.2.circlepath")
                })
            } //HStack
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "mail")
                        .foregroundColor(.gray)
                    Text("What's New")
                        .foregroundColor(.primary)
                        .font(.system(size: 16.0, weight: .semibold, design: .default))
                })
                Button(action: {
                    
                }, label: {
                    Image(systemName: "ticket")
                        .foregroundColor(.gray)
                    Text("Coupon")
                        .foregroundColor(.primary)
                        .font(.system(size: 16.0, weight: .semibold, design: .default))
                })
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bell")
                        .foregroundColor(.gray)
                })
            } //HStack
        } //VStack
        .padding(16.0)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
