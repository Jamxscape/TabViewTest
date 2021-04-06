//
//  NextView.swift
//  TabViewTest
//
//  Created by 马元 on 2021/4/6.
//

import SwiftUI

struct NextView: View {
    var body: some View {
        NavigationLink(destination: ThirdView()) {
            Text("第二个页面")
        }
    }
}

struct NextView_Previews: PreviewProvider {
    static var previews: some View {
        NextView()
    }
}
