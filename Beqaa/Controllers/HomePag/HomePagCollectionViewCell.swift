//
//  HomePagCollectionViewCell.swift
//  Beqaa
//
//  Created by hana Alshammri on 29/05/1443 AH.
//

import UIKit

class HomePagCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var logoRganizeIt: UIImageView!
    
    @IBOutlet weak var organizeIt: UIButton!
    
    @IBOutlet weak var Bacground: UIImageView!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    @IBAction func getLocations(_ sender: UIButton) {
        print("d")
    }
    
    
}
