//
//  ContentView.swift
//  TabViewTest
//
//  Created by 马元 on 2021/4/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
                    TabView {
                        TabOneView()
                            .tabItem {
                                Image(systemName: "list.bullet")
                                Text("Tab One")
                            }
                        Text("第二个Tabview页面")
                            .tabItem {
                                Image(systemName: "list.bullet")
                                Text("Tab Two")
                            }
                    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
