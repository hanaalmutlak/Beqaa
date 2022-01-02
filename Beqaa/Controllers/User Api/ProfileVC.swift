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
    
    
    
    let profileImage: UIImageView = {
        let profileImage = UIImageView()
        return profileImage
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UserApi.getUser(uid:Auth.auth().currentUser?.uid ?? "") { user in
            self.EmailLabel.text = user.email
            self.NameLabel.text = user.name
            self.phoneNumberLabel.text = user.phoneNumber
        }
    }
    

    

}

extension ProfileVC: UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    func photoAlert() {
        let alert = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "", style: .default, handler: { camera in
            self.profileImageGet(fromSource: .camera)
        }))
        alert.addAction(UIAlertAction(title: "", style: .default, handler: { photo in
            self.profileImageGet(fromSource: .photoLibrary)
        }))
        alert.addAction(UIAlertAction(title: "", style: .destructive))

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
            self?.profileImage.image = image
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
