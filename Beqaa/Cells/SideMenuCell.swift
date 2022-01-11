//
//  SideMenuCell.swift
//  Beqaa
//
//  Created by hana Alshammri on 30/05/1443 AH.
//

import UIKit

class SideMenuCell: UITableViewCell {
    
    @IBOutlet weak var labelMenu: UILabel!
    
    @IBOutlet weak var logoImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
