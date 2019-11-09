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
            List(landmarks){Landmark in // 表单 List
                NavigationLink(destination: Details(model: Landmark)){ //为列表添加点击事件 NavigationLink
                    
                    Image(Landmark.thumbnailName) // Image 视图
                        .cornerRadius(10)
                    
                    VStack(alignment: .leading){ //垂直视图
                        Text(Landmark.name)   // Text 视图
                            .font(.headline)
                        
                        Text(Landmark.EnglishName)
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
