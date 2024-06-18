//
//  ContentView.swift
//  SwiftUIArcodianTestWithTCA
//
//  Created by Jae hyung Kim on 6/18/24.
//

import SwiftUI

/*
 섹션은 2개
 각 섹션별 유동적 데이터
 아코디온 뷰를 구성해 보겠습니다.
 */
// 사용할 모델을 정의해 보겠습니다.
// 부모와 자식 모델을 정의해 볼께요

struct AppType {
    let id = UUID()
    let name: String
    let currentNum = Int.random(in: 0...100)
    var items: [AppChildType]?
}

struct AppChildType {
    let id = UUID()
    let name: String
    let intro: String
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
