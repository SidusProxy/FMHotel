//
//  Room.swift
//  FMHotel
//
//  Created by Roberto D'Anna on 17/01/23.
//
import SwiftUI
import Foundation

public struct Room:Codable{
    var id: String
    var isAvailable: Bool
    var capacity: Int
    var roomNumber: Int
    
    init(support:RoomSupport){
        self.id = support.id ?? ""
        self.capacity = support.capacity ?? 1
        self.roomNumber = support.roomNumber ?? 1
        self.isAvailable = Bool(truncating: (support.available ?? 0) as NSNumber)
    }
}

public struct RoomSupport{
    var id: String?
    var available: Int?
    var capacity: Int?
    var roomNumber: Int?
    
    init(room:Room){
        self.id = room.id
        self.capacity = room.capacity
        self.roomNumber = room.roomNumber
        self.available = Int(truncating: (room.isAvailable) as NSNumber)
        
    }
}
