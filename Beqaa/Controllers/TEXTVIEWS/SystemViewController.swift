

//  Created by hana Alshammri on 22/05/1443 AH.
import UIKit

class SystemViewController: UIViewController {

    @IBOutlet weak var systemTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        systemTextView.text = "system_text_view".localized
    }
    

    @IBAction func websiteLinkB(_ sender: Any) {
        let url = URL (string: "https://www.moia.gov.sa/Rules/Pages/default.aspx")!
             UIApplication.shared.open (url)
    }
}
