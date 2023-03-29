//
//  BannerImageData.swift
//  payapp
//
//  Created by chosanghyun on 2021/10/21.
//  Copyright © 2021 payapp. All rights reserved.
//

import UIKit

class BannerImageData {
     
    /*
     * 베너 클릭 시 이동 URL
     */
    var url: String?
    
    /*
     * 베너 이미지 주소
     */
    var banner: String?
    
    /*
     * 베너 이미지
     */
    var bannerImage: UIImage?
    
    /*
     * 베너 백그라운드 이미지주소
     */
    var background: String?
    
    /*
     * 베너 백그라운드 이미지
     */
    var backgroundImage: UIImage?
    
    init(url: String, banner: String, background: String) {
        self.url = url
        self.banner = banner
        self.background = background
    }
    
}
