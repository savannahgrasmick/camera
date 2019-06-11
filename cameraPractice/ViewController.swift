//
//  ViewController.swift
//  cameraPractice
//
//  Created by Apple on 6/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
UIImagePickerControllerDelegate,
UINavigationControllerDelegate
//delegates inherit code from apple
{

    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad()
    {
        imagePicker.delegate = self
    }

    @IBAction func takeSelfie(_ sender: Any) {
        
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
        
        
    
    }
    
    @IBAction func accessLibrary(_ sender: Any) {
        
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
        
    }
    
    
    @IBOutlet weak var newImage: UIImageView!
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage =
        info [UIImagePickerController.InfoKey.originalImage] as? UIImage
        {
            newImage.image = selectedImage
            
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
        
        
    }
    
    
}

