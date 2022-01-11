//
//  ViewController.swift
//  AWQAF2
//
//  Created by hana Alshammri on 19/05/1443 AH.
////
//
import UIKit
import FirebaseAuth
class ChangeLanguage: UIViewController {
    
    @IBOutlet weak var btnChangeLanguage: UIButton!
    @IBOutlet weak var IblHello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        IblHello.text = NSLocalizedString("hallo", comment: "hallo label")
        btnChangeLanguage.setTitle(NSLocalizedString("changeLanguage", comment: ""), for: .normal)
        
    }
    
    @IBAction func btnChangeLanguage(_ sender: Any) {
        
        let currentLang = Locale.current.languageCode
        print("currentLang: \(currentLang ?? "0")")
        let newLanguage = currentLang == "en" ? "ar" : "en"
        UserDefaults.standard.setValue(newLanguage, forKey: "AppleLanguages")
        exit(0)
    }
    
    
    
    
}

