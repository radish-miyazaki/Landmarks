import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    var body: some View {
        VStack {
            if let landmark {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()
            }
            
            Text(title ?? "Unknown Landmark")
                .font(.headline)
            
            Divider()
            
            Text(message ?? "You are within 5 miles of one of your favorited landmarks.")
                .font(.caption)
        }
    }
}

#Preview {
    NotificationView()
}

#Preview {
    NotificationView(
        title: "Turtle Rock",
        message: "You are within 5 miles of Tutle Rock.",
        landmark: ModelData().landmarks[0]
    )
}
