//
//  LanguageViewController.swift
//  Beqaa
//
//  Created by hana Alshammri on 08/06/1443 AH.
//

import UIKit

class LanguageVC : UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
