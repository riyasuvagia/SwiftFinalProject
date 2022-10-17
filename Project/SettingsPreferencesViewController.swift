//
//  SettingsPreferencesViewController.swift
//  Project
//
//  Created by Riya Suvagia on 10/17/22.
//

import UIKit

class SettingsPreferencesViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var style :String = "light"
    @IBOutlet weak var swapButton: UIButton!
    @IBOutlet weak var imageButton: UIButton!
    
    @IBOutlet weak var imageAlpha: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //overrideUserInterfaceStyle = .dark
        
    }
    @IBAction func imageSwap(_ sender: Any) {
        let image=UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        image.allowsEditing = false
        self.present(image,animated: true){
            
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageAlpha.image=image
        }else{
            print("error")
        }
        self.dismiss(animated: true,completion: nil)
    }
      
    
    
    @IBAction func swapTheme(_ sender: Any) {
        
        if (style == "light"){
            style = "dark"
            overrideUserInterfaceStyle = .dark
        }else if(style == "dark"){
            style = "light"
            overrideUserInterfaceStyle = .light
        }
    }
    
    
    
    
}

