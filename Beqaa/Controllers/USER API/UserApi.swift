//
//  UserApi.swift
//  AWQAF2
//
//  Created by hana Alshammri on 19/05/1443 AH.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage
import UIKit

class UserApi {
    
    static func addUser(uid:String,email:String,name:String,phoneNumber:String,city:String,ImageProfile:String ,completion: @escaping (Bool) -> Void) {
        let db = Firestore.firestore()
        let refUser = db.collection("Users")
        refUser.document(uid).setData(Users.createUser(email: email, name: name, phoneNumber: phoneNumber, city: city, ImageProfile: ImageProfile))
        
        completion(true)
        
    }
    // Steps to find the user
    
    static func getUser(uid:String,completion: @escaping (Users) -> Void) {
        let db = Firestore.firestore()
        let refUsers = db.collection("Users")
        refUsers.document(uid).getDocument { document, error in
            if let document = document, document.exists {
                let user = Users.getUser(dict: document.data()!)
                completion(user)
            }
        }
    }
    //  Add a picture and upload it to the Fire Piece
    
    static func addImageProfile(uid:String,url:String) {
        let refUsers = Firestore.firestore().collection("Users")
        refUsers.document(uid).setData(Users.putImageProfile(imageProfileUrl: url),merge: true)
    }
    
    
    static func uploadUserImage(userImage:UIImage, completion: @escaping (Bool,String?) -> Void) {
        
        let storageRed = Storage.storage().reference()
        let profileImageRef = storageRed.child("Users").child(Auth.auth().currentUser?.uid ?? "").child("\(String(Int(arc4random()))).jpg")
        
        let uploadedMetaData = StorageMetadata()
        uploadedMetaData.contentType = "image/jpeg"
        
        guard let data = userImage.pngData() else { return }
        
        profileImageRef.putData(data, metadata: uploadedMetaData) {
            (uploadedMetaData, error) in
            if error != nil {
                print("error\(String(describing: uploadedMetaData))")
                
            } else {
                profileImageRef.downloadURL { url, error in
                    let urlDownload = url?.absoluteString
                    completion(true,urlDownload)
                }
            }
            print("Meta Data of Upload image \(String(describing: uploadedMetaData))")
            
        }
        
    }
}
