//
//  ContentView.swift
//  SwiftUI-Demo
//
//  Created by 花生仁 on 11/8/19.
//  Copyright © 2019 花生仁. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{ // NavigationView 视图
            List(0..<6){item in // 表单 List
                NavigationLink(destination: Text("Hello")){ //为列表添加点击事件 NavigationLink
                    
                    Image("Big Ben(Thumb)") // Image 视图
                        .cornerRadius(10)
                    
                    VStack(alignment: .leading){ //垂直视图
                        Text("Hello, World!")   // Text 视图
                            .font(.headline)
                        
                        Text("你好")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }.navigationBarTitle("地标")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
