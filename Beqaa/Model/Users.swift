//
//  Users.swift
//  AWQAF2
//
//  Created by hana Alshammri on 19/05/1443 AH.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class Users {
    var email:String?
    var password:String?
    var name: String?
    var phoneNumber:String?
    var city: String?
    var ImageProfile: String?
    
    
}

extension Users {
    static func getUser(dict: [String: Any]) -> Users {
        
        let user = Users()
        user.phoneNumber = dict["phoneNumber"] as? String
        user.email = dict["email"] as? String
        user.name = dict["name"] as? String
        user.city = dict["city"] as? String
        user.ImageProfile = dict["ImageProfile"] as? String
        return user
        
    }
    static func createUser(email:String,name:String,phoneNumber:String,city:String,ImageProfile:String) -> [String:Any] {
        let newUser = ["email":email,
                       "name":name,
                       "phoneNumber":phoneNumber,
                       "city":city,
                       "ImageProfile":ImageProfile]
        
        return newUser
        
    }
    
    static func putImageProfile(imageProfileUrl:String) -> [String:Any] {
        let newUser = ["ImageProfile":imageProfileUrl] as [String:Any]
        return newUser
    }
    
}
