//
//  BannerCellView.swift
//  SwiftUI_BannerView
//
//  Created by 조상현 on 2023/03/29.
//
 
import SwiftUI

struct BannerCellView: View {
    
    let bannerImageData: BannerImageData
    
    var body: some View {
        ZStack {
            Color.gray
             
            CacheAsyncImage(url: URL(string: "\(bannerImageData.background!)")!) { asyncImagePhase in
                if let image = asyncImagePhase.image {
                    image
                        .resizable()
                }
            }
            
            CacheAsyncImage(url: URL(string: "\(bannerImageData.banner!)")!) { asyncImagePhase in
                if let image = asyncImagePhase.image {
                    image
                        .resizable()
                }
            }
        }
        .cornerRadius(5)
    }
    
}
