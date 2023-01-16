//
//  FMHotelApp.swift
//  FMHotel
//
//  Created by Gianluca Annina on 16/01/23.
//

import SwiftUI
import FMProKit
@main
struct FMHotelApp: App {
    var api:FMODataAPI! = FMODataAPI("napoli.fm-testing.com", "Hotel", "Admin", "Admin")
    
    var body: some Scene {
        WindowGroup {
            ContentView().task {
                
                do{
                    let tmpArray:[UserSupport] = try await api.getTable("User")
                    print(tmpArray)
                }catch{
                   print(error)
                }
                
            }
        }
    }
}
