//
//  Home.swift
//  Beqaa
//
//  Created by hana Alshammri on 26/05/1443 AH.
//

import Foundation
import UIKit
import AVFAudio




struct Organization {
    var name : String
    var imageName : UIImage
    var logoName : UIImage
    var link : URL
    
    
    static func getSystems() -> [Organization] {
        
        return [
            self.init(name: "mosque system",imageName: UIImage(named: "A"  )!,logoName: UIImage(named: "A_log")!,link: URL(string: "https://sys.moia.gov.sa/msjd/login.aspx")!)
            ,
            self.init(name:  "facilitation system", imageName: UIImage(named: "B")!, logoName: UIImage(named: "B_log")!, link: URL(string: "https//sys.moia.gov.sa/dawa/login")!)
            ,
            self.init( name:  "Quran competition system" , imageName: UIImage(named: "C" )!, logoName: UIImage(named: "C_log")!, link:URL(string: "https://www.moia.gov.sa/Systems/QuranCompetition/Pages/default.aspx")!)
            ,
            self.init(name: "hosting system", imageName: UIImage(named: "D")!, logoName: UIImage(named: "D_log")!, link:URL(string: "https://sys.moia.gov.sa/guests/home.aspx")!)
            
            ,
            self.init(name: "Quran associations management system", imageName: UIImage(named: "E")!, logoName: UIImage(named: "E_log")!, link:URL(string:"https://sys.moia.gov.sa/quran/login.aspx")!)
            
        ]
        
    }
}
