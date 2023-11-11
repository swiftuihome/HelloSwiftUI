//
//  EyeLoadingAnimationView.swift
//  HelloSwiftUI
//
//  Created by shiyanjun on 2023/11/11.
//

import SwiftUI

/// 眨眼睛动画
struct EyeLoadingAnimationView: View {
    @State var isAnimating: Bool = false
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            
            HStack(spacing: 30) {
                Capsule()
                    .foregroundColor(.white)
                    .frame(width: 100, height: isAnimating ? 0 : 40)
                    .animation(.easeOut(duration: 1.2).repeatForever(), value: isAnimating)
                    .overlay {
                        Circle()
                            .frame(width: 20, height: 20)
                    }
                
                Capsule()
                    .foregroundColor(.white)
                    .frame(width: 100, height: isAnimating ? 0 : 40)
                    .animation(.easeOut(duration: 1.2).repeatForever(), value: isAnimating)
                    .overlay {
                        Circle()
                            .frame(width: 20, height: 20)
                    }
            }
        }
        .onAppear {
            isAnimating = true
        }
    }
}

#Preview {
    EyeLoadingAnimationView()
}
