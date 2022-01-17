//
//  Questionnaire.swift
//  Beqaa
//
//  Created by hana Alshammri on 14/06/1443 AH.
//


import UIKit

class Questionnaire: UIViewController {
    
    @IBOutlet weak var surveyLabel: UILabel!
    @IBOutlet weak var clickHereButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        surveyLabel.text = "Click to fill out the survey".localized
   
}
    //Add an API link to convert to the questionnaire
    @IBAction func websiteLinkB(_ sender: Any) {
        let url = URL (string: "https://docs.google.com/forms/d/17tC6HczkpMeHFAwVl6y6KfSROK-bMYZcNN57U-YQlT4/edit?usp=sharing")!
             UIApplication.shared.open (url)
    }
    
    }
    

