//
//  RegistrtionViewController.swift
//  AWQAF2
//
//  Created by hana Alshammri on 21/05/1443 AH.
//

import UIKit
import FirebaseAuth

class RegistrtionVC: UIViewController {
    
    @IBOutlet weak var UserNameText: UITextField!
    @IBOutlet weak var IDTF: UITextField!
    @IBOutlet weak var EmailTF: UITextField!
    @IBOutlet weak var PhoneNamberTF: UITextField!
    @IBOutlet weak var CityTF: UITextField!
    @IBOutlet weak var PasswordTF: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.layer.cornerRadius = 5
    }
    //Transfer and save registration data in Firebase
    
    @IBAction func RegistrationTapped(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: EmailTF.text ?? "", password: PasswordTF.text ?? "") { user, error in
            
            if let error = error {
                print("erore:\(error)")
                
            }else{
                
                UserApi.addUser(uid: user?.user.uid ?? "", email: self.EmailTF.text ?? "", name: self.UserNameText.text ?? "", phoneNumber: self.PhoneNamberTF.text ?? "", city: self.CityTF.text ?? "", ImageProfile: "") { result  in
                    if result {
                        
                        self.performSegue(withIdentifier: "tabBar", sender: nil)
                        
                    }
                }
                
            }
            
        }
    }
    
}
