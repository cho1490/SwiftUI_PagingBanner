//
//  ContentView.swift
//  SwiftUI_BannerView
//
//  Created by 조상현 on 2023/03/29.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ContentViewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Text("SwiftUI_BannerView")
    
            Spacer()
            
            BannerView(bannerList: viewModel.bannerList)
                .frame(maxWidth: .infinity, maxHeight: 90)                
        }
        .padding()
        .onAppear {
            viewModel.getBannerList()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
