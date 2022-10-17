//
//  SettingsViewController.swift
//  SettingsAlpha
//
//  Created by Mackenzie Cronin on 10/10/22.
//

import UIKit

class SettingsViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var style :String = "light"
    @IBOutlet weak var swapButton: UIButton!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var colorButton: UIButton!
    
    @IBOutlet weak var imageAlpha: UIImageView!
    @IBOutlet weak var rField: UITextField!
    @IBOutlet weak var gField: UITextField!
    @IBOutlet weak var bField: UITextField!
    
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
        }else if(style=="custom"){
            style="custom2"
            
        }
    }
    
    //working on introduction of firebase to provide profile functionality and settings/ image saving between profiles
    
    
    //working on introduction of password system, login functionality, and password change functionality via firebase
    
    //working on introduction of customizable background settings, ie: color of UI, custom image background, and custom text coloration
    @IBAction func changeColor(_ sender: Any) {
        
        let r = Float(rField.text!)! / 255
        let g = Float(gField.text!)! / 255
        let b = Float(bField.text!)! / 255
        self.view.backgroundColor = UIColor(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: 1)
    
        //code is WIP, intending to reuse on large scale to cover things including text colors app wide, this is just to prove understanding of color systems and CGFloat
    }
    
    //introducting custom settings for font, might need full adjustment for all viewcontrollers,
    // Final decision: Font adjustments saved for last, due to potentially requiring arrays of UI elements which would need to be looped through to set font, it is not sensible to start work on this now
    
    //
    
    
}

