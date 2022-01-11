//
//  HomePagCollectionViewCell.swift
//  Beqaa
//
//  Created by hana Alshammri on 29/05/1443 AH.
//

import UIKit

class HomePagCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var logoRganizeIt: UIImageView!
    @IBOutlet weak var Organization: UIButton!
    @IBOutlet weak var Bacground: UIImageView!
    
    var url : URL?
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    @IBAction func getSystems(_ sender: UIButton) {
        
        UIApplication.shared.open(url!)
        
    }
    
    
}
