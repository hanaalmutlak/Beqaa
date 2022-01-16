//
//  SideMenu.swift
//  Beqaa
//
//  Created by hana Alshammri on 30/05/1443 AH.
//

import UIKit
import SwiftUI



class SideMenuVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    let menu = ["ministry".localized,"quran".localized ,"systems".localized, "communication_service".localized,"change_language".localized]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    //Table view side menu to move between pages
}

extension SideMenuVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SideMenuCell else {return UITableViewCell()}
        
        cell.labelMenu.text = menu[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0 :
            performSegue(withIdentifier: "Ministry", sender: nil)
        case 1 :
            performSegue(withIdentifier: "Quran", sender: nil)
        case 2 :
            performSegue(withIdentifier: "Systems", sender: nil)
        case 3 :
            performSegue(withIdentifier:  "CommunicationService", sender: nil)
        case 4 :
            performSegue(withIdentifier: "ChangeLanguage", sender: nil)
            
            
        default:
            print("")
        }
    }
}
