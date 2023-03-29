//
//  BannerView.swift
//  SwiftUI_BannerView
//
//  Created by 조상현 on 2023/03/29.
//

import SwiftUI

struct BannerView: View {
     
    var bannerList: [BannerImageData] = []
    let bannerCountConstant = 100
    
    init(bannerList: [BannerImageData]) {
        self.bannerList = bannerList 
    }
        
    @State var timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            if bannerList.count != 0 {
                ScrollViewReader { scrollView in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 0) {
                            ForEach(0..<bannerCountConstant, id: \.self) { index in
                                let bannerIndex = (index % bannerList.count)
                                BannerCellView(bannerImageData: bannerList[bannerIndex])
                                    .frame(width: width, height: height)                                    
                                    .onAppear {
                                        currentIndex = index
                                        timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
                                    }
                            }
                        }
                    }
                    .onReceive(timer) { _ in
                        if currentIndex == bannerCountConstant - 1 {
                            currentIndex = 0
                        } else  {
                            currentIndex += 1
                        }
                        
                        withAnimation {
                            scrollView.scrollTo(currentIndex, anchor: .center)
                        }
                    }
                }
                .onAppear {
                    UIScrollView.appearance().isPagingEnabled = true
                }
                .onDisappear() {
                    UIScrollView.appearance().isPagingEnabled = false
                }
            }
        }
    }
    
}

