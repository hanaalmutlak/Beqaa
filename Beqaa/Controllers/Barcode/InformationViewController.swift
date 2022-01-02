//
//  InformationViewController.swift
//  AWQAF2
//
//  Created by hana Alshammri on 22/05/1443 AH.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var DescrabshinLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    

    var mosqueQR : MosqueQR = MosqueQR(name: "name", Descrabshin: "Descrabshin", Date: "2020")
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = mosqueQR.name
        DateLabel.text = mosqueQR.Date
        DescrabshinLabel.text = mosqueQR.Descrabshin
        

        // Do any additional setup after loading the view.
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
