//
//  ContentViewModel.swift
//  SwiftUI_BannerView
//
//  Created by 조상현 on 2023/03/29.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var bannerList: [BannerImageData] = []
            
    func getBannerList() {
        bannerList = [BannerImageData(url: "",
                                     banner: "",
                                     background: ""),
                      BannerImageData(url: "",
                                     banner: "",
                                     background: ""),
                      BannerImageData(url: "",
                                     banner: "",
                                     background: "")]
    }
    
}
