import SwiftUI

struct Kits: Identifiable, Hashable {
    
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let url: URL
}

struct KitsList {
    
    static let someKits = [
        
        Kits(imageName: "storeKit-image",
             title: "StoreKit",
             description: "Support in-app purchases and interactions with the App Store.",
             url: URL(string: "https://developer.apple.com/documentation/storekit")!),
        
        Kits(imageName: "homeKit-image",
             title: "HomeKit",
             description: "Allow users to communicate with and control connected accessories in their home.",
             url: URL(string: "https://developer.apple.com/documentation/homekit")!),
        
        Kits(imageName: "arKit-image",
             title: "ARKit",
             description: "Build unparalleled augmented reality experiences for iOS and iPadOS.",
             url: URL(string: "https://developer.apple.com/documentation/arkit")!),
        
        Kits(imageName: "musicKit-image",
             title: "MusicKit",
             description: "Let users play Apple Music and their local music library from your website and iOS or Android apps.",
             url: URL(string: "https://developer.apple.com/documentation/musickit")!),
        
        Kits(imageName: "gameKit-image",
             title: "GameKit",
             description: "Add leaderboards, achievements, matchmaking, challenges, and more.",
             url: URL(string: "https://developer.apple.com/documentation/gamekit")!),
        
        Kits(imageName: "cloudKit-image",
             title: "CloudKit",
             description: "Store your app’s data in iCloud and keep everything up to date across apps and on the web. Membership includes up to 1PB of free storage for each app.",
             url: URL(string: "https://developer.apple.com/documentation/cloudkit")!),
        
        Kits(imageName: "coreML-image",
             title: "CoreML",
             description: "Integrate a broad variety of machine learning model types into your app.",
             url: URL(string: "https://developer.apple.com/documentation/coreml")!),
        
        Kits(imageName: "widgetKit-image",
             title: "WidgetKit",
             description: "Deliver a small amount of timely, useful information or app-specific functionality across iOS, iPadOS, and macOS.",
             url: URL(string: "https://developer.apple.com/documentation/widgetkit")!),
        
        Kits(imageName: "sensorKit-image",
             title: "SensorKit",
             description: "Retrieve data and derived metrics from an iPhone’s sensors, or from a paired Apple Watch.",
             url: URL(string: "https://developer.apple.com/documentation/sensorkit")!)
    ]
}

