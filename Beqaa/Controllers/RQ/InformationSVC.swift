//
//  InformationViewController.swift
//  AWQAF2
//
//  Created by hana Alshammri on 22/05/1443 AH.
//

import UIKit

class InformationSVC: UIViewController {

    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var DescrabshinLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    

    var mosqueQR : MosqueQR = MosqueQR(name: "name", Descrabshin: "Descrabshin", Date: "2020")
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = mosqueQR.name
        DateLabel.text = mosqueQR.Date
        DescrabshinLabel.text = mosqueQR.Descrabshin
        
    }
}
