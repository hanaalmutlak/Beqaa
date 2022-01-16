//
//  HomePagViewController.swift
//  Beqaa
//
//  Created by hana Alshammri on 26/05/1443 AH.
//

import UIKit
class HomePagVC: UIViewController {
    
    @IBOutlet weak var CollectionV: UICollectionView!
    var organization = [Organization]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionV.delegate = self
        CollectionV.dataSource = self
        organization = Organization.getSystems()
      CollectionV.layer.shadowOpacity = 0.9
      CollectionV.layer.shadowRadius = 10
      
    
      
    }
    
    @IBAction func sideMenu(_ sender: Any) {
        
        performSegue(withIdentifier: "side", sender: nil)
        
    }
}
//Coction View to convert the user to Safari

extension HomePagVC:  UICollectionViewDelegate , UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return organization.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell" , for: indexPath) as? HomePagCollectionViewCell  else { return UICollectionViewCell() }
        
        cell.logoRganizeIt.image = organization[indexPath.row].logoName
        cell.Organization.setTitle(organization[indexPath.row].name, for: .normal)
        cell.Bacground.image = organization[indexPath.row].imageName
        cell.url = organization[indexPath.row].link
        cell.Bacground.layer.cornerRadius = 12
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
}
