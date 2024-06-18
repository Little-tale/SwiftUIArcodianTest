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

struct AppType: Identifiable {
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

// 편의를 위해 모델을 확장하여 미리 선언해 보겠습니다.

extension AppType {
    static var KAKAO = AppType(name: "카카오")
    static var INSTARGRAM = AppType(name: "인스타그램")
    static var FACEBOOK = AppType(name: "페이스북")
}

struct ContentView: View {
    // 페이스북은 없는 경우로 해보겠습니다.
    let kakaoChild = [
        AppChildType(name: "싸이", intro: "대한민국 가수"),
        AppChildType(name: "BTS", intro: "대한민국 가수"),
        AppChildType(name: "라면", intro: "라면땅")
    ]
    let instarChild = [
        AppChildType(name: "잔나비", intro: "대한민국 아이돌 가수"),
        AppChildType(name: "봉준호", intro: "대한민국 감독"),
        AppChildType(name: "손흥민", intro: "대한민국 축구선수"),
        AppChildType(name: "에스파", intro: "대한민국 아이돌 가수")
    ]
    var body: some View {
        VStack {
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
