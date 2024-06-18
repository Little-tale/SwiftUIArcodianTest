//
//  ContentView.swift
//  SwiftUIArcodianTestWithTCA
//
//  Created by Jae hyung Kim on 6/18/24.
//

import SwiftUI

struct AppType: Identifiable {
    let id = UUID()
    let name: String
    let currentNum = Int.random(in: 0...100)
    var intro: String?
    var items: [AppType]?
}

struct AppChildType: Identifiable {
    let id = UUID()
    let name: String
    let intro: String
}

struct ContentView: View {
    var appTypes: [AppType] = [
        AppType(name: "카카오", items: [
            AppType(name: "싸이", intro: "대한민국 가수"),
            AppType(name: "BTS", intro: "대한민국 가수"),
            AppType(name: "라면", intro: "라면땅")
        ]),
        AppType(name: "인스타그램", items: [
            AppType(name: "잔나비", intro: "대한민국 아이돌 가수"),
            AppType(name: "봉준호", intro: "대한민국 감독"),
            AppType(name: "손흥민", intro: "대한민국 축구선수"),
            AppType(name: "에스파", intro: "대한민국 아이돌 가수")
        ]),
        AppType(name: "페이스북")
    ]

    var body: some View {
        List {
            ForEach(appTypes) { app in
                Section(header: Text(app.name)) {
                    OutlineGroup(app, children: \.items) { item in
                        Text(item.name)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
