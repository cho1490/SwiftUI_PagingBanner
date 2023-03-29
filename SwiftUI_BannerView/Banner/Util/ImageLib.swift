//
//  ImageLib.swift
//  SwiftUI_BannerView
//
//  Created by 조상현 on 2023/03/29.
//

import SDWebImage

class ImageLib {

    static func downloadImage(url: String, callback: @escaping (UIImage?) -> Void) {
        SDWebImageDownloader.shared().downloadImage(with: URL(string:  url)) { image, _, error, _ in
            if let _error = error {
                print("SDWebImageDownloader : \(_error.localizedDescription)")
                callback(nil)
            } else {
                callback(image)
            }
        }
    }
 
}

