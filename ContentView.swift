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
                cell(landmark: Landmark)    // command ----> Extrect Subview  分离
            }.navigationBarTitle("地标")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct cell: View {
    let landmark:Landmark
    var body: some View {
        NavigationLink(destination: Details(model: landmark)){ //为列表添加点击事件 NavigationLink
            Image(landmark.thumbnailName) // Image 视图
                .cornerRadius(10)
            
            VStack(alignment: .leading){ //垂直视图
                Text(landmark.name)   // Text 视图
                    .font(.headline)
                
                Text(landmark.EnglishName)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
