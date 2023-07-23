import SwiftUI

@main
struct SwiftyApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        #if os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif
    }
    
    
//    #if os(macOS)
//    Settings {
//        LandmarkSettings()
//    }
//    #endif
    
    // macros for os
    
//    #if os(watchOS)
//    WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
//    #endif
}
