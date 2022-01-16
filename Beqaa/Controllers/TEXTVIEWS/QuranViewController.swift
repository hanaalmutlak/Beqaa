
//  Created by hana Alshammri on 22/05/1443 AH.
import UIKit

class QuranViewController: UIViewController {
    
    
    @IBOutlet weak var quranTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quranTextView.text = "quran_text_view".localized
    }
    

}
