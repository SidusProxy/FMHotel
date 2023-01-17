//
//  Reservation.swift
//  FMHotel
//
//  Created by Ramona Ruoppo on 17/01/23.
//

import Foundation
import SwiftUI
public struct Reservation{
    var fiscalCode:String
    var endDate:Date
    var id:String
    var roomId:String
    var startDate:Date
    
    init(fiscalCode: String, endDate: Date, id: String, roomId: String, startDate: Date) {
        self.fiscalCode = fiscalCode
        self.endDate = endDate
        self.id = id
        self.roomId = roomId
        self.startDate = startDate
    }
    
    init(support:ReservationSupport) {
        self.fiscalCode = support.fiscalCode ?? ""
        self.endDate = ISO8601DateFormatter().date(from:support.endDate ?? "") ?? Date()
        self.id = support.id ?? ""
        self.roomId = support.roomId ?? ""
        self.startDate = ISO8601DateFormatter().date(from:support.startDate ?? "") ?? Date()
    }
    
}


public struct ReservationSupport{
    var fiscalCode:String?
    var endDate:String?
    var id:String?
    var roomId:String?
    var startDate:String?
    
    init(fiscalCode: String? = nil, endDate: String? = nil, id: String? = nil, roomId: String? = nil, startDate: String? = nil) {
        self.fiscalCode = fiscalCode
        self.endDate = endDate
        self.id = id
        self.roomId = roomId
        self.startDate = startDate
    }
    
    init(reservation:Reservation) {
        self.fiscalCode = reservation.fiscalCode
        self.endDate = ISO8601DateFormatter().string(from: reservation.endDate)
        self.id = reservation.id
        self.roomId = reservation.roomId
        self.startDate = ISO8601DateFormatter().string(from: reservation.startDate)
    }
        
}
