import SwiftUI

struct LandmarkList: View {
    @State private var columnVisibility = NavigationSplitViewVisibility.detailOnly
    @State private var selectedLandmark: Landmark?
    
    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            List(landmarks) { landmark in
                LandmarkRow(landmark: landmark)
                .onTapGesture {
                    selectedLandmark = landmark
                    columnVisibility = .detailOnly
                }
            }
            .navigationDestination(item: $selectedLandmark) { landmark in
                LandmarkDetail(landmark: landmark)
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
