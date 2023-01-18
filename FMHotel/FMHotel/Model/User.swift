//
//  User.swift
//  FMHotel
//
//  Created by Gianluca Annina on 16/01/23.
//
import SwiftUI
import Foundation

public struct User:Codable{
    var fiscalCode: String
    var name: String
    var surname: String
    var birthDate: Date
    var photo: Data
//    var photo: UIImage
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
public struct UserSupport2:Codable{
    var fiscalCode: String?
    var name: String?
    var surname: String?
    var birthDate: String?
    var photo: Data?
}

//public struct SomeImage: Codable {
//
//    public let photo: Data
//
//    public init(photo: UIImage) {
//
//    }
//}
