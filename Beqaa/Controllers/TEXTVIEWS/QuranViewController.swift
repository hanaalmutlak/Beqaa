
//  Created by hana Alshammri on 22/05/1443 AH.
import UIKit

class QuranViewController: UIViewController {
    
    
    @IBOutlet weak var quranTextView: UITextView!
    
    @IBOutlet weak var quranImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        quranImage.image = UIImage(named: "1")
        quranTextView.text = "quran_text_view".localized
    }
    

}
