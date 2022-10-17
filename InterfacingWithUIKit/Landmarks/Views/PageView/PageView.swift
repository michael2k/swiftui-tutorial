//
//  PageView.swift
//  Landmarks
//
//  Created by Michael M. Kim on 2022/10/17.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 1
    
    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage)
            Text("Current Page \(currentPage)")
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map {
            FeatureCard(landmark: $0)
                .aspectRatio(3 / 2, contentMode: .fit)
        })
    }
}
