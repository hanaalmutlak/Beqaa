//
//  SignInViewController.swift
//  AWQAF2
//
//  Created by hana Alshammri on 21/05/1443 AH.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {

    @IBOutlet weak var EmailTF: UITextField!
    
    @IBOutlet weak var PassowrdTF: UITextField!
    @IBOutlet weak var SignInB: UIButton!
    
    @IBOutlet weak var RegistrationB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBotuun(_ sender: Any) {
        
        
        Auth.auth().signIn(withEmail: EmailTF.text ?? "", password: PassowrdTF.text ?? "") { user, error in
            
            if let error = error {
                self.showAlart(titale: "Error", masge: "error is \(error.localizedDescription)")
                
                
            }else{
                
                
                self.performSegue(withIdentifier: "HomePage", sender: nil)
                
                
                
                
            }
            

        }
        
        
        
    
        
    }
    
    
    func showAlart(titale : String , masge : String) {
        let alart = UIAlertController(title: titale, message: masge, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alart.addAction(ok)
        present(alart, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
}
