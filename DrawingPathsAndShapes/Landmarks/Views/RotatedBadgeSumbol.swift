//
//  RotatedBadgeSumbol.swift
//  Landmarks
//
//  Created by Michael M. Kim on 2022/10/16.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSumbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSumbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSumbol(angle: Angle(degrees: 5))
    }
}
