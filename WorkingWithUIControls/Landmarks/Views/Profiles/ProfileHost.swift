//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Michael M. Kim on 2022/10/17.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
