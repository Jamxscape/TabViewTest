//
//  TabOneView.swift
//  TabViewTest
//
//  Created by 马元 on 2021/4/6.
//

import SwiftUI

struct TabOneView: View {
    @State var isPresented = false

        var body: some View {
            Button {
                isPresented = true
            } label: {
                Text("TabView主页面")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }
            .fullScreenCover(isPresented: $isPresented) {
                FullSheetView(isPresented: $isPresented)
            }
        }
}

struct TabOneView_Previews: PreviewProvider {
    static var previews: some View {
        TabOneView()
    }
}
struct FullSheetView: View {
    @Binding var isPresented: Bool

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: NextView()) {
                    Text("跳转的第一个页面")
                }
            }.navigationBarItems(leading: Button(action: { isPresented = false }) {
                HStack {
                    Image(systemName: "chevron.left")
                    Text("返回")
                }
            })
            .navigationBarTitle(Text("从TabView跳转的第一个页面"), displayMode: .inline)
            
        }
    }
}
