
//
//  Model.swift
//  LoginScreenIOSApp
//
//  Created by Apple on 11/6/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import ObjectMapper




//class userInformation: Mappable {
////    var page: Int?
////    var per_page: Int?
////    var total: Int?
////    var total_pages: Int?
//    var dulieu : [daTa]?
//
//    required init?(map: Map) {
//
//    }
//
//    func mapping(map: Map) {
////        page <- ["page"]
////        per_page <- ["perpage"]
////        total_pages <- ["total_pages"]
//        dulieu <- map["data"]
//    }
//}
//
//
//class daTa: Mappable {
//
//    var id: Int?
//    var name: String?
//    var year: Int?
//    var color: String?
//    var pantone_value: String?
//
//    required init?(map: Map) {
//
//    }
//
//     func mapping(map: Map) {
//        id <- map["id"]
//        name <- map["name"]
//        year <- map["year"]
//        color <- map["color"]
//        pantone_value <- map["pantone_value"]
//    }
//
//
//}

struct UserData : Mappable {
    var page : Int?
    var per_page : Int?
    var total : Int?
    var total_pages : Int?
    var dataa : [Dataa]?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        page <- map["page"]
        per_page <- map["per_page"]
        total <- map["total"]
        total_pages <- map["total_pages"]
        dataa <- map["data"]
    }

}

struct Dataa : Mappable {
    var id : Int?
    var name : String?
    var year : Int?
    var color : String?
    var pantone_value : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        id <- map["id"]
        name <- map["name"]
        year <- map["year"]
        color <- map["color"]
        pantone_value <- map["pantone_value"]
    }

}


