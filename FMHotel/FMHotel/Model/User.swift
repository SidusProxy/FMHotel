//
//  User.swift
//  FMHotel
//
//  Created by Gianluca Annina on 16/01/23.
//
import SwiftUI
import Foundation

public struct User:Codable,Hashable{
    var fiscalCode: String
    var name: String
    var surname: String
    var birthDate: Date
    
//    init(support:UserSupport){
//        //self.birthDate = support.birthDate
//    }
}
public struct UserSupport:Codable{
    var fiscalCode: String?
    var name: String?
    var surname: String?
    var birthDate: String?
}
