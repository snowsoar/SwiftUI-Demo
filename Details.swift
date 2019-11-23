//
//  Details.swift
//  SwiftUI-Demo
//
//  Created by 花生仁 on 11/8/19.
//  Copyright © 2019 花生仁. All rights reserved.
//

import SwiftUI

/*
 struct 不能改变
 @State 属性可以改变,一旦被改变将会自动刷新 body ,不需要 reload
 */
struct Details: View {
    let model:Landmark  // 定义一个常量,类型为Landmark
    @State var zoomed = false  // 定义一个变量，用来改变图像 displayMode
    var body: some View {
        ZStack(alignment:.bottomTrailing){ // 前后层叠视图（后写的在最上层）
            Image(model.imageName)
                .resizable()    // 自动调整图片大小
                .aspectRatio(contentMode: zoomed ? .fill : .fit) // 图像显示模式
                .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 0, maxHeight: .infinity)
                .navigationBarTitle(Text(model.name),displayMode: .inline)
                .onTapGesture { //点击事件 回调
                    withAnimation(.default) { // 根据条件得到的结果动画
                        self.zoomed.toggle()    // Bool类型值自动切换 false、true
                    }
                    // 值改变后不需要 reload，系统会自动刷新
            }
            if !zoomed{
                Text(model.location)
                    .font(.largeTitle)
                    .foregroundColor(.secondary)
                    .padding()//默认边距
                    .transition(.move(edge: .trailing)) // 单独设置动画
            }
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
