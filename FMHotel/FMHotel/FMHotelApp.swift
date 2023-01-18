//
//  FMHotelApp.swift
//  FMHotel
//
//  Created by Gianluca Annina on 17/01/23.
//

import SwiftUI
import FMProKit
@main
struct FMHotelApp: App {
    var api:FMODataAPI! = FMODataAPI("napoli.fm-testing.com", "Hotel", "Admin", "Admin")
    var body: some Scene {
        WindowGroup {
            RobertoView()
        }
    }
}
