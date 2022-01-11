//
//  ButtonViewController.swift
//  Beqaa
//
//  Created by hana Alshammri on 04/06/1443 AH.
//

import UIKit
import SafariServices

class ButtonViewController: UIViewController {

    
    let organizeIt = ["mosque system", "facilitation system" , "Quran competition system" , "hosting system" , "Quran associations management system"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    @IBAction func mosqueSystem(_ sender: Any) {
        
        guard let URL = URL(string:  ) else {return }
        
        let VC = SFSafariViewController(url: URL)
        
present( VC , animated: false )
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
