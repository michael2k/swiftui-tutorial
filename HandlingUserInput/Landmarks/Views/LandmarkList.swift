/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    @State private var showFacoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { Landmark in
            (!showFacoriteOnly || Landmark.isFavorite )
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFacoriteOnly) {
                    Text("Favorites Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
