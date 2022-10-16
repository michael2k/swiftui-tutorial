//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Michael M. Kim on 2022/10/16.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    var categroyName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categroyName)
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        CategoryItem(landmark: landmark)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(categroyName: landmarks[0].category.rawValue, items: Array(landmarks.prefix(4)))
    }
}
