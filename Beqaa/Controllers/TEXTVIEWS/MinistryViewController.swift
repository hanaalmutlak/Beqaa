
//  Created by hana Alshammri on 22/05/1443 AH.
import UIKit

class MinistryViewController: UIViewController {

    @IBOutlet weak var ministryTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ministryTextView.text = "ministry_text_view".localized
    }
}
