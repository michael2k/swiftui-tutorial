//
//  HikeBadge.swift
//  Landmarks
//
//  Created by Michael M. Kim on 2022/10/17.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {
        VStack {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name)")
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
