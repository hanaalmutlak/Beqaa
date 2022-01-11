//
//  ProfileVC.swift
//  AWQAF2
//
//  Created by hana Alshammri on 19/05/1443 AH.
//

import UIKit
import FirebaseAuth
class ProfileVC: UIViewController {

    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var EmailLabel: UILabel!
    @IBOutlet weak var CityLabel: UILabel!
    @IBOutlet weak var imageProfile: UIImageView!
    
    
    var SelfImage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    guard let uid = Auth.auth().currentUser?.uid else { return }
        UserApi.getUser(uid: uid ) { user in
            self.EmailLabel.text = user.email
            self.NameLabel.text = user.name
            self.phoneNumberLabel.text = user.phoneNumber
            self.CityLabel.text = user.city
            self.SelfImage = user.ImageProfile
            self.saveProfileimage()
        }
        imageProfile.layer.cornerRadius = imageProfile.frame.height / 2
        }
    
    @IBAction func imageBottun(_ sender: Any) {
        
        photoAlert()
        }
    
    func saveProfileimage(){
        
    guard let url = URL(string: self.SelfImage ?? "") else {return}
        if let data = try? Data(contentsOf: url){
            self.imageProfile.image = UIImage(data: data)
            
        }
    }

}
extension ProfileVC: UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    func photoAlert() {
        let alert = UIAlertController(title: "ADD Photo", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { camera in
            self.profileImageGet(fromSource: .camera)
        }))
        alert.addAction(UIAlertAction(title: "Photo Library".localized, style: .default, handler: { photo in
            self.profileImageGet(fromSource: .photoLibrary)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive))

                        present(alert, animated: true, completion: nil)
    }
    
    func profileImageGet(fromSource sourceType: UIImagePickerController.SourceType) {
        
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = sourceType
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        dismiss(animated: true) { [weak self] in
            guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return}
            self?.imageProfile.image = image
            UserApi.uploadUserImage(userImage: image) { check, url in
                if check {
                    UserApi.addImageProfile(uid:Auth.auth().currentUser?.uid ?? "", url: url ?? "")
                }
            }
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
