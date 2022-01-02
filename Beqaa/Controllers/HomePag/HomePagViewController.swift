//
//  HomePagViewController.swift
//  Beqaa
//
//  Created by hana Alshammri on 26/05/1443 AH.
//

import UIKit
import SwiftUI

class HomePagViewController: UIViewController {
    
    
    @IBOutlet weak var CollectionV: UICollectionView!
    

    
    let image = ["A" ,"B" , "C" , "D" , "E" ]
    
    let organizeIt = ["mosque system", "facilitation system" , "Quran competition system" , "hosting system" , "Quran associations management system"]
    
    let logoRganizeIt = ["A_log","B_log","C_log","D_log","E_log"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CollectionV.delegate = self
        CollectionV.dataSource = self
        //        BacgrondImage.image = UIImage(named: "")
        
    }
}
extension HomePagViewController:  UICollectionViewDelegate , UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return logoRganizeIt.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1" , for: indexPath) as? HomePagCollectionViewCell  else { return UICollectionViewCell() }
        cell.logoRganizeIt.image = UIImage(named: logoRganizeIt[indexPath.row])
        cell.organizeIt.setTitle(organizeIt[indexPath.row], for: .normal)
        cell.Bacground.image = UIImage(named:image[indexPath.row])
        cell.Bacground.layer.cornerRadius = 12
        return cell
    }
//
//
//
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}






