//
//  Details.swift
//  SwiftUI-Demo
//
//  Created by 花生仁 on 11/8/19.
//  Copyright © 2019 花生仁. All rights reserved.
//

import SwiftUI

struct Details: View {
    var model:Landmark  // 定义一个常量,类型为Landmark
    var body: some View {
        ZStack(alignment:.bottomTrailing){ //前后层叠视图（后写的在最上层）
            Image(model.imageName)
                .resizable()    //自动调整图片大小
                .scaledToFit()  //图像显示模式
                .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 0, maxHeight: .infinity)
                .navigationBarTitle(Text(model.name),displayMode: .inline)
            
            Text(model.location)
                .font(.largeTitle)
                .foregroundColor(.secondary)
                .padding()//默认边距
        }
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            Details(model: landmarks[0])
        }
    }
}
