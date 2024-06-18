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
